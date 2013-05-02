package com.kuguo.front.repository;

import java.util.List;

import com.kuguo.front.entity.Label;

@MyBatisRepository
public interface LabelDao {

	public List<Label> get();
	
}
