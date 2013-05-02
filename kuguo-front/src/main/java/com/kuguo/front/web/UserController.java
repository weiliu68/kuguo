package com.kuguo.front.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@RequestMapping(value = "/register",method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("action", "create");
		return "user/register";
	}

	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public String create(@Valid User newUser,
			RedirectAttributes redirectAttributes) {
		return "redirect:/user/";
	}

	@ResponseBody
	@RequestMapping(value="/check_email_availability",method=RequestMethod.POST)
	public String checkEmailValide(@RequestParam String email){
		//TODO: 校验邮箱是否已注册
		
		return "true";
	}
}
