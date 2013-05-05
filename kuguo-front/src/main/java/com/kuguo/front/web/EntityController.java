package com.kuguo.front.web;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;
import com.kuguo.front.service.ProductService;

@Controller
@RequestMapping(value = "/entity")
public class EntityController {
	@Autowired
	private ProductService productService;

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
		User user = new User();
		newProduct.setUser(user);

		productService.saveProduct(newProduct);
		return "redirect:/selected/";
	}
	
	@RequestMapping(value = "/entity/note/update/{id}/", method = RequestMethod.POST)
	public String update(Product product) {
		productService.saveProduct(product);
		return "redirect:/selected/";
	}
}
