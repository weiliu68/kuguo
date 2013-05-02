package com.kuguo.front.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.User;
import com.kuguo.front.repository.UserDao;

@Component
@Transactional(readOnly = true)
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public List<User> getHotUsers(int number) {
		return userDao.getHotUsers(number);
	}
}
