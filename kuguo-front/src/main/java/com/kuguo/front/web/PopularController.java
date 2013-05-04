package com.kuguo.front.web;

import java.util.List;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kuguo.front.entity.Channel;
import com.kuguo.front.entity.Label;
import com.kuguo.front.entity.Product;
import com.kuguo.front.service.ChannelService;
import com.kuguo.front.service.LabelService;
import com.kuguo.front.service.ProductService;


@Controller
@RequestMapping(value = "/popular")
public class PopularController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ChannelService channelService;

	@Autowired
	private LabelService labelService;

	@RequestMapping(value = "")
	public String list(@RequestParam(value = "sortType", defaultValue = "auto") String sortType,
			@RequestParam(value = "page", defaultValue = "1") int pageNumber, Model model, ServletRequest request) {
			List<Product> products = productService.getProductsByPage(pageNumber);
			List<Channel> channels = channelService.getAllChannel();
			List<Label> labels = labelService.getLabel();
			model.addAttribute("products", products);
			model.addAttribute("channels", channels);
			model.addAttribute("labels", labels);

			return "popular/popularList";
		}
}
