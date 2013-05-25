package com.kuguo.front.repository;

import java.util.List;

import com.kuguo.front.entity.Product;
import com.kuguo.front.entity.User;

@MyBatisRepository
public interface ProductDao {
	List<Product> getAll(int page);
	
	Product get(Long id);

	void save(Product product);

	List<Product> getPop();

	List<Product> getUP(Long id);

	List<User> getLikedUsers(Long id);
}
