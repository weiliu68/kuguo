package com.kuguo.front.service.account;

import java.util.List;

import net.sourceforge.htmlunit.corejs.javascript.SecurityUtilities;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.DateProvider;
import org.springside.modules.utils.Encodes;

import com.kuguo.front.entity.Users;
import com.kuguo.front.repository.ProductDao;
import com.kuguo.front.repository.UsersDao;
import com.kuguo.front.service.ServiceException;
import com.kuguo.front.service.account.ShiroDbRealmDemo.ShiroUser;

@Component
@Transactional(readOnly = true)
public class AccountServiceDemo {
	
	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	
	private static Logger logger = LoggerFactory.getLogger(AccountServiceDemo.class);
	
	private UsersDao usersDao;
	private ProductDao productDao;
	private DateProvider dateProvider = DateProvider.DEFAULT;
	
	public List<Users> getAllUsers() {
		return (List<Users>) usersDao.findAll();
	}
	
	public Users getUser(Long id) {
		return usersDao.findOne(id);
	}
	
	public Users findUserByName(String name) {
		return usersDao.findByName(name);
	}
	
	@Transactional(readOnly = false)
	public void registerUser(Users user) {
		entryptPassword(user);
		
		usersDao.save(user);
	}
	
	@Transactional(readOnly = false)
	public void updateUser(Users user) {
		if(StringUtils.isNotBlank(user.getPassword())) {
			entryptPassword(user);
		}
		usersDao.save(user);
	}
	
	private boolean isSupervisor(Long id) {
		return id == 1;
	}

	private String getCurrentUserName() {
		ShiroUser user = (ShiroUser)SecurityUtils.getSubject().getPrincipal();
		return user.name;
	}

	private void entryptPassword(Users user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));
		
		byte[] hashPassword = Digests.sha1(user.getPassword().getBytes(), salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}
	
	@Autowired
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
}
