package com.kuguo.front.repository;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;

import com.kuguo.front.SpringTransactionalTestCase;
import com.kuguo.front.entity.Comment;

@DirtiesContext
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class CommentDaoTest extends SpringTransactionalTestCase {

	@Autowired
	private CommentDao commentDao;

	@Test
	public void saveComment() {
		Comment comment = new Comment();
		comment.setContent("评论内容");
		comment.setAgree_num(0);
		comment.setDisagree_num(0);
		comment.setProduct(null);
		commentDao.save(comment);

	}

}
