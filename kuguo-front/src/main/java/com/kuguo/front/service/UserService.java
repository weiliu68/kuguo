package com.kuguo.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.User;
import com.kuguo.front.repository.UserDao;
import com.kuguo.front.utils.Digests;
import com.kuguo.front.utils.Encodes;

@Component
@Transactional(readOnly = true)
public class UserService {
	
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	
	@Autowired
	private UserDao userDao;

	public List<User> getHotUsers(int number) {
		return userDao.getHotUsers(number);
	}

	@Transactional(readOnly = false)
	public void saveUser(User user) {
		
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));
		
		byte[] hashPassword = Digests.sha1(user.getPassword().getBytes(),salt,HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
		
		userDao.save(user);
	}

	@Transactional(readOnly = false)
	public void updateUser(User user) {
		userDao.update(user);
	}

	public User getUser(Long id) {
		return userDao.get(id);
	}

}
