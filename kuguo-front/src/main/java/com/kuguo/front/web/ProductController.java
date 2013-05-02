package com.kuguo.front.web;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springside.modules.web.Servlets;

import com.google.common.collect.Maps;
import com.kuguo.front.entity.Channel;
import com.kuguo.front.entity.Label;
import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;
import com.kuguo.front.service.ChannelService;
import com.kuguo.front.service.LabelService;
import com.kuguo.front.service.ProductService;
import com.kuguo.front.service.UserService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ChannelService channelService;
	
	@Autowired
	private LabelService labelService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "")
	public String list(@RequestParam(value = "sortType",defaultValue = "auto") String sortType,
			@RequestParam(value = "page",defaultValue = "1") int pageNumber, Model model,ServletRequest request) {
		List<Product> products = productService.getProductsByPage(pageNumber);
		List<Channel> channels = channelService.getAllChannel(); 
		List<Label> labels = labelService.getLabel();
		List<User> users = userService.getHotUsers(5);
		model.addAttribute("products",products);
		model.addAttribute("channels",channels);
		model.addAttribute("labels", labels);
		model.addAttribute("users", users);
		
		return "product/productList";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("action", "create");
		return "product/productForm";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@Valid Product newProduct,RedirectAttributes redirectAttributes) {
		User user = new User();
		newProduct.setUser(user);
		
		productService.saveProduct(newProduct);
		redirectAttributes.addFlashAttribute("message", "创建任务成功");
		return "redirect:/product/";
	}
	
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("product",productService.getProduct(id));
		model.addAttribute("action", "update");
		return "product/productForm";
	}
	
	@RequestMapping(value = "update" , method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("preloadProduct") Product product, RedirectAttributes redirectAttributes) {
		productService.saveProduct(product);
		redirectAttributes.addFlashAttribute("message", "更新任务完成");
		return "redirect:/product/";
	}
	
	@ModelAttribute("preloadProduct")
	public Product getProduct(@RequestParam(value = "id", required = false) Long id) {
		if(id != null) {
			return productService.getProduct(id);
		}
		return null;
	}
	
	@RequestMapping(value = "/taobao/info" , method = RequestMethod.POST)
	public void getFromTaobao(String url){
	}
}
