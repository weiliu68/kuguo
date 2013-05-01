package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "user_friend")
public class Friend extends IdEntity {
//	private User user_id;
//	private User friend_id;
	private Date create_time;
	
	
	
}
