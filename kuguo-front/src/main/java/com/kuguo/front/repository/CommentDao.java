package com.kuguo.front.repository;

import com.kuguo.front.entity.Comment;

@MyBatisRepository
public interface CommentDao {
	void save(Comment comment);

	Comment getComment(Long id);
}
