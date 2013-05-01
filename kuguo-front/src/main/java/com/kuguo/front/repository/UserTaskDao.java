package com.kuguo.front.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.kuguo.front.entity.UserTask;

public interface UserTaskDao extends PagingAndSortingRepository<UserTask, Long> {
	UserTask findByLoginName(String loginName);
}
