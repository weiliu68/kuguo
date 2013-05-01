package com.kuguo.front.web.comment;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.Comment;
import com.kuguo.front.service.comment.CommentService;

public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = "save",method = RequestMethod.GET)
	public String saveForm(Model model) {
		model.addAttribute("comment",new Comment());
		return "";
	}
	
	@RequestMapping(value = "save",method = RequestMethod.POST)
	public String save(@Valid Comment newComment,RedirectAttributes redirectAttributes) {
		commentService.saveComment(newComment);
		return "";
	}
	
}
