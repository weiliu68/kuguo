package com.kuguo.front.repository;

import static junit.framework.Assert.assertNotNull;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;

@DirtiesContext
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class UserDaoTest extends SpringTransactionalTestCase {
	@Autowired
	private UserDao userDao;


	@Test
	public void getUser() {
		User user = userDao.get(1L);
		assertNotNull(user);
	}
	
	@Test
	public void saveUser() {
		User user = new User();
		user.setName("username");
		user.setEmail("aaa");
		user.setPassword("password");
		userDao.save(user);

	}
}
