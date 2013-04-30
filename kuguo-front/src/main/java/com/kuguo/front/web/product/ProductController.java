package com.kuguo.front.web.product;

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
import com.kuguo.front.entity.Product;
import com.kuguo.front.service.account.ShiroDbRealm.ShiroUser;
import com.kuguo.front.service.task.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	private static final int PAGE_SIZE = 3;
	
	private static Map<String,String> sortTypes = Maps.newLinkedHashMap();
	static {
		sortTypes.put("auto",	 "自动");
		sortTypes.put("name", "测试");
	}
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "")
	public String list(@RequestParam(value = "sortType",defaultValue = "auto") String sortType,
			@RequestParam(value = "page",defaultValue = "1") int pageNumber, Model model,ServletRequest request) {
		Map<String, Object> searchParams = Servlets.getParametersStartingWith(request, "search_");
		Long userId = getCurrentUserId();
		
		Page<Product> products = productService.findAll(searchParams, pageNumber, PAGE_SIZE, sortType);
		model.addAttribute("products",products);
		model.addAttribute("sortType",sortType);
		model.addAttribute("sortTypes", sortTypes);
		model.addAttribute("searchParams",Servlets.encodeParameterStringWithPrefix(searchParams, "search_"));
		
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
//		Users user = new Users(getCurrentUserId());
//		newProduct.setUser(user);
		
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
	
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		productService.deleteProduct(id);
		redirectAttributes.addFlashAttribute("message", "删除任务完成");
		return "redirect:/product/";
	}
	
	@ModelAttribute("preloadProduct")
	public Product getProduct(@RequestParam(value = "id", required = false) Long id) {
		if(id != null) {
			return productService.getProduct(id);
		}
		return null;
	}
	

	private Long getCurrentUserId() {
		ShiroUser user = (ShiroUser)SecurityUtils.getSubject().getPrincipal();
		return user.id;
	}
	
	
	
	
}
