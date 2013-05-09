package com.kuguo.front.web;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.Comment;
import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;
import com.kuguo.front.service.CommentService;
import com.kuguo.front.service.ProductService;
import com.kuguo.front.service.ShiroDbRealm.ShiroUser;

@Controller
@RequestMapping(value = "/entity")
public class EntityController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CommentService commentService;

	@RequestMapping(value = "/taobao/info", method = RequestMethod.POST)
	public String getFromTaobao(String url, Model model) {
		model.addAttribute("item", productService.getTaobaoItemByUrl(url));
		return "product/taobaoItemInfo";
	}
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("action", "create");
		return "product/new";
	}

	@RequestMapping(value = "/new", method = RequestMethod.POST)
	public String create(@Valid Product newProduct, RedirectAttributes redirectAttributes) {
		ShiroUser currentUser = (ShiroUser)SecurityUtils.getSubject().getPrincipal();
		User user = new User();
		user.setId(currentUser.getId());
		newProduct.setUser(user);
		newProduct.getComment().setUser(user);
		productService.saveProduct(newProduct);
		return "redirect:/selected/";
	}
	
	@RequestMapping(value = "/note/create/", method = RequestMethod.POST)
	public String createComment(@Valid Comment newComment) {
		ShiroUser currentUser = (ShiroUser)SecurityUtils.getSubject().getPrincipal();
		User user = new User();
		user.setId(currentUser.getId());
		newComment.setUser(user);
		commentService.saveComment(newComment);
		return "redirect:/selected/";
	}
	
	@RequestMapping(value = "/entity/note/update/{id}/", method = RequestMethod.POST)
	public String update(Product product) {
		productService.saveProduct(product);
		return "redirect:/selected/";
	}
}
