package com.kuguo.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.Product;
import com.kuguo.front.repository.ProductDao;
import com.kuguo.front.repository.TaobaoDao;
import com.kuguo.front.utils.Constant;
import com.taobao.api.domain.Item;

@Component
@Transactional(readOnly = true)
public class ProductService {
	private ProductDao productDao;
	private TaobaoDao taobaoDao;

	public List<Product> getProductsByPage(int page) {
		return productDao.getAll(page * Constant.PAGE_NUMBER);
	}

	public List<Product> getPopProducts() {
		return productDao.getPop();
	}
	
	public Product getProduct(Long id) {
		return productDao.get(id);
	}

	@Transactional(readOnly = false)
	public void saveProduct(Product entity) {
		productDao.save(entity);
	}

	public Item getTaobaoItemByUrl(String url) {
		return taobaoDao.getTaoBaoItemByUrl(url);
	}

	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Autowired
	public void setTaobaoDao(TaobaoDao taobaoDao) {
		this.taobaoDao = taobaoDao;
	}
}
