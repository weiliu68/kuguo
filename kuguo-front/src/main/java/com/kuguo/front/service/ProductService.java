package com.kuguo.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.Product;
import com.kuguo.front.repository.ProductDao;
import com.kuguo.front.utils.Constant;

@Component
@Transactional(readOnly = true)
public class ProductService {
	private ProductDao productDao;

	public List<Product> getProductsByPage(int page) {
		return productDao.getAll(page * Constant.PAGE_NUMBER);
	}

	public List<Product> getPopProducts(int num) {
		return productDao.getPop(num);
	}
	
	public Product getProduct(Long id) {
		return productDao.get(id);
	}

	@Transactional(readOnly = false)
	public void saveProduct(Product entity) {
		productDao.save(entity);
	}

	private PageRequest buildPageRequest(int pageNumber, int pageSize, String sortType) {
		Sort sort = null;
		if ("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
		} else if ("title".equals(sortType)) {
			sort = new Sort(Direction.ASC, "title");
		}
		return new PageRequest(pageNumber - 1, pageSize, sort);
	}

	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

}
