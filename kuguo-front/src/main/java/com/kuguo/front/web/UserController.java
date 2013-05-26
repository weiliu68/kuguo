package com.kuguo.front.web;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.Label;
import com.kuguo.front.entity.User;
import com.kuguo.front.service.LabelService;
import com.kuguo.front.service.ProductService;
import com.kuguo.front.service.UserService;

@Controller
@RequestMapping(value = "")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private LabelService labelService;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String createForm(Model model) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String create(@Valid User newUser,HttpServletResponse response,
			RedirectAttributes redirectAttributes) {
		//1. 保存用户入库、密码用salt处理
		userService.saveUser(newUser);
		// 2.登录
		
		return "redirect:/selected";
	}
	
	//显示喜爱的商品 ok
	@RequestMapping(value = "/u/{id}/likes")
	public String likes(@PathVariable("id") Long id,Model model) {
		model.addAttribute("user", userService.getUser(id));
		model.addAttribute("products", userService.getLikedProducts(id));
		return "user/likes";
	}
	
	//显示被谁关注
	@RequestMapping(value = "/u/{id}/fans")
	public String fans(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		model.addAttribute("fans", userService.getFans(id));
		return "user/fans";
	}
	
	//显示关注的人
	@RequestMapping(value = "/u/{id}/followings")
	public String followings(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		model.addAttribute("friends", userService.getFriends(id));
		return "user/followings";
	}
	
	@RequestMapping(value = "/u/{id}/notes")
	public String notes(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		//点评过的商品ok
		model.addAttribute("products", productService.getCommentProducts(id));
		return "user/notes";
	}
	
	//显示添加的商品，ok
	@RequestMapping(value = "/u/{id}/posts")
	public String posts(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		model.addAttribute("products", productService.getUserProducts(id));
		return "user/posts";
	}
	
	//显示添加的标签
	@RequestMapping(value = "/u/{id}/tags")
	public String tags(@PathVariable("id") Long id, Model model) {
		model.addAttribute("user", userService.getUser(id));
		return "user/tags";
	}
	
	//显示用户消息
	@RequestMapping(value = "user/message")
	public String message(Model model) {
		List<Label> labels = labelService.getLabel(5);
		List<User> users = userService.getHotUsers(5);
		model.addAttribute("labels", labels);
		model.addAttribute("users", users);
		return "user/message";
	}

	@ResponseBody
	@RequestMapping(value = "/check_email_availability", method = RequestMethod.POST)
	public String checkEmailValide(@RequestParam String email) {
		// TODO: 校验邮箱是否已注册
		return "true";	
	}

	@RequestMapping(value = "user/setting", method = RequestMethod.GET)
	public String updateFrom(Model model) {
		//model.addAttribute("user",);
		return "user/setting";
	}

	@RequestMapping(value = "user/setting", method = RequestMethod.POST)
	public String update(@Valid User user, RedirectAttributes redirectAttributes) {
		userService.saveUser(user);
		return "redirect:/selected";
	}
}
