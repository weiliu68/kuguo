package com.kuguo.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;
import com.kuguo.front.repository.UserDao;
import com.kuguo.front.utils.Digests;
import com.kuguo.front.utils.Encodes;

@Component
@Transactional(readOnly = true)
public class UserService {
	
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	public static final String HASH_ALGORITHM = "SHA-1";
	
	@Autowired
	private UserDao userDao;

	public List<User> getHotUsers(int number) {
		return userDao.getHotUsers(number);
	}

	@Transactional(readOnly = false)
	public void saveUser(User user) {
		entryptPassword(user);
		userDao.save(user);
	}
	
	/**
	 * 设定安全的密码，生成随机的salt并经过1024次 sha-1 hash
	 */
	private void entryptPassword(User user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));

		byte[] hashPassword = Digests.sha1(user.getPlainPassword().getBytes(), salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}

	@Transactional(readOnly = false)
	public void updateUser(User user) {
		userDao.update(user);
	}

	public User getUser(Long id) {
		return userDao.get(id);
	}

	public User validate(String email, String password) {
		// 1. 根据email获取用户(主要包含password和salt用来验证登录)
		User user = userDao.getUserByEmail(email);
		if (user != null) {
			byte[] salt = Encodes.decodeHex(user.getSalt());
			String hashPassword = Encodes.encodeHex(Digests.sha1(password.getBytes(), salt, HASH_INTERATIONS));
			if (hashPassword.equals(user.getPassword())) {
				return user;
			}
		}
		return null;
	}

	public User findUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}

	public List<User> getAllUser() {
		return userDao.getUser();
	}

	public List<Product> getLikedProducts(Long id) {
		return userDao.getLikedProducts(id);
	}
	
}
