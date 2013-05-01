package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "message")
public class Message extends IdEntity {
	private int type;
	private Date create_time;
	private User user_id;
	private Product product_id;
//	private 
	
	
}
