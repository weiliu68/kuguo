package com.kuguo.front.repository;

import java.util.List;

import com.kuguo.front.entity.User;

@MyBatisRepository
public interface UserDao {
	List<User> getHotUsers(int number);

	void save(User user);

	void update(User user);

	User get(Long id);
	

}