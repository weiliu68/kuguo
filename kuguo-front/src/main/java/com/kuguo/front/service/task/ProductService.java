package com.kuguo.front.service.task;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;
import org.springside.modules.persistence.SearchFilter.Operator;

import com.kuguo.front.entity.Product;
import com.kuguo.front.repository.ProductDao;

@Component
@Transactional(readOnly = true)
public class ProductService {
	private ProductDao productDao;

	public Product getProduct(Long id) {
		return productDao.findOne(id);
	}

	@Transactional(readOnly = false)
	public void saveProduct(Product entity) {
		productDao.save(entity);
	}

	@Transactional(readOnly = false)
	public void deleteProduct(Long id) {
		productDao.delete(id);
	}

	public List<Product> getAllProduct() {
		return (List<Product>) productDao.findAll();
	}

	public Page<Product> getUserProduct(Long userId,
			Map<String, Object> searchParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize,sortType);
		Specification<Product> spec = buildSpecification(userId,searchParams);
		return productDao.findAll(spec, pageRequest);
	}
	
	public Page<Product> findAll(Map<String, Object> searchParams, int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize,sortType);
		return productDao.findAll(pageRequest);
	}

	private Specification<Product> buildSpecification(Long userId,
			Map<String, Object> searchParams) {
		Map<String, SearchFilter> filters = SearchFilter.parse(searchParams);
		filters.put("user.id", new SearchFilter("user.id",Operator.EQ, userId));
		Specification<Product> spec = DynamicSpecifications.bySearchFilter(filters.values(), Product.class);
		return spec;
	}

	private PageRequest buildPageRequest(int pageNumber, int pageSize,
			String sortType) {
		Sort sort = null;
		if("auto".equals(sortType)) {
			sort = new Sort(Direction.DESC, "id");
		} else if("title".equals(sortType)) {
			sort = new Sort(Direction.ASC,"title");
		}
		return new PageRequest(pageNumber - 1, pageSize, sort);
	}
	
	@Autowired
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

}
