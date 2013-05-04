package com.kuguo.front.service.account;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.utils.Encodes;

import com.kuguo.front.entity.User;
import com.kuguo.front.repository.UserDao;
import com.kuguo.front.utils.Digests;

@Component
@Transactional(readOnly = true)
public class AccountService {
	public static final String HASH_ALGORITHM = "SHA-1";
	public static final int HASH_INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	
	private static Logger logger = LoggerFactory.getLogger(AccountService.class);
	
	@Autowired
	private UserDao userDao;
		
	@Transactional(readOnly = false)
	public void saveUser(User user) {
		if(StringUtils.isNotBlank(user.getPassword())) {
			entryPassword(user);
		}
	}

	private void entryPassword(User user) {
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		user.setSalt(Encodes.encodeHex(salt));
		
		byte[] hashPassword = Digests.sha1(user.getPassword().getBytes(), salt, HASH_INTERATIONS);
		user.setPassword(Encodes.encodeHex(hashPassword));
	}

	public User findUserByName(String name) {
		return null;
	}
	
	
	
}
