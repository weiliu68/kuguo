package com.kuguo.front.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kuguo.front.entity.Label;
import com.kuguo.front.repository.LabelDao;

@Component
@Transactional(readOnly = true)
public class LabelService {
	@Autowired
	private LabelDao labelDao;
	
	public List<Label> getLabel() {
		return labelDao.get();
	}
	

}
