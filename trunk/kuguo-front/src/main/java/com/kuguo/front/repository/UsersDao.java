package com.kuguo.front.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.kuguo.front.entity.Users;

public interface UsersDao extends PagingAndSortingRepository<Users, Long> {
	Users findByName(String name);
}
