package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "label")
public class Label extends IdEntity {
	private String name;
	private User create_user_id;
	private Date create_time;
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
