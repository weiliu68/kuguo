package com.kuguo.front.web;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.User;
import com.kuguo.front.service.UserService;

@Controller
@RequestMapping(value = "")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String createForm(Model model) {
		return "user/register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String create(@Valid User newUser,HttpServletResponse response,
			RedirectAttributes redirectAttributes) {
		//1. 保存用户入库、注意密码处理
		userService.saveUser(newUser);
		// 2.登录
		return "redirect:/product";
	}

	@ResponseBody
	@RequestMapping(value = "/check_email_availability", method = RequestMethod.POST)
	public String checkEmailValide(@RequestParam String email) {
		// TODO: 校验邮箱是否已注册
		return "true";
	}

	@RequestMapping(value = "/setting", method = RequestMethod.GET)
	public String updateFrom(Model model) {
		return "user/setting";
	}

	@RequestMapping(value = "/setting", method = RequestMethod.POST)
	public String update(@Valid User user, RedirectAttributes redirectAttributes) {
		userService.saveUser(user);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginForm() {
		return "user/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String email,String password,HttpServletResponse response) {
		return "user/login";
	}
}