package com.kuguo.front.repository;

import java.util.List;

import com.kuguo.front.entity.Product;

@MyBatisRepository
public interface ProductDao {
	List<Product> getAll(int page);
	
	Product get(Long id);

	void save(Product product);

	List<Product> getPop();
}
