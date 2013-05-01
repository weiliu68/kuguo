package com.kuguo.front.repository;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.kuguo.front.entity.Product;

public interface ProductDao extends PagingAndSortingRepository<Product, Long>,
		JpaSpecificationExecutor<Product> {
}
