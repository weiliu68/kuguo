package com.kuguo.front.service.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.Comment;
import com.kuguo.front.repository.CommentDao;

@Component
@Transactional(readOnly = true)
public class CommentService {
	private CommentDao commentDao;

	@Transactional(readOnly = false)
	public void saveComment(Comment entity) {
		commentDao.save(entity);
	}

	@Autowired
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

}
