package com.kuguo.front.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "channel")
public class Channel extends IdEntity {
	private String name;
	private User user_id;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
