package com.kuguo.front.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.kuguo.front.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
