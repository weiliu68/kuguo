package com.kuguo.front.web;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kuguo.front.entity.Channel;
import com.kuguo.front.entity.Label;
import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;
import com.kuguo.front.service.ChannelService;
import com.kuguo.front.service.CommentService;
import com.kuguo.front.service.LabelService;
import com.kuguo.front.service.ProductService;
import com.kuguo.front.service.UserService;

@Controller
@RequestMapping(value = "")
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private ChannelService channelService;

	@Autowired
	private LabelService labelService;

	@Autowired
	private UserService userService;
	

	@RequestMapping(value = "/selected")
	public String list(@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model) {
		List<Product> products = productService.getProductsByPage(pageNumber);
		List<Channel> channels = channelService.getAllChannel();
		List<Label> labels = labelService.getLabel(5);
		List<User> users = userService.getHotUsers(5);
		model.addAttribute("products", products);
		model.addAttribute("channels", channels);
		model.addAttribute("labels", labels);
		model.addAttribute("users", users);

		return "product/productList";
	}
	
	@RequestMapping(value = "/popular")
	public String poplist(Model model, ServletRequest request) {
		List<Product> products = productService.getPopProducts();
		model.addAttribute("products", products);
		return "popular/popularList";
	}

	@RequestMapping(value = "/discover")
	public String discover(Model model) {
		List<Product> products = productService.getPopProducts();
		List<Channel> channels = channelService.getAllChannel();
		model.addAttribute("channels", channels);
		model.addAttribute("products", products);
		return "discover/discover";
	}
	
	@RequestMapping(value = "/activity")
	public String activity(Model model) {		
		List<Channel> channels = channelService.getAllChannel();
		List<Label> labels = labelService.getLabel(5);
		List<User> users = userService.getHotUsers(5);
		model.addAttribute("channels", channels);
		model.addAttribute("labels", labels);
		model.addAttribute("users", users);
		return "activity";
	}
	
	
	@RequestMapping(value = "/entity/new/", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("action", "create");
		return "product/productForm";
	}

	@RequestMapping(value = "/entity/new/", method = RequestMethod.POST)
	public String create(@Valid Product newProduct, RedirectAttributes redirectAttributes) {
		User user = new User();
		newProduct.setUser(user);

		productService.saveProduct(newProduct);
		return "redirect:/selected/";
	}

	@RequestMapping(value = "/detail/{id}/", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("product", productService.getProduct(id));
		model.addAttribute("action", "update");
		return "product/productForm";
	}

	@RequestMapping(value = "/entity/note/update/{id}/", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("preloadProduct") Product product, RedirectAttributes redirectAttributes) {
		productService.saveProduct(product);
		return "redirect:/selected/";
	}
	
	@RequestMapping(value = "/taobao/info", method = RequestMethod.POST)
	public String getFromTaobao(String url, Model model) {
		model.addAttribute("item", productService.getTaobaoItemByUrl(url));
		return "product/newProduct";
	}
}
