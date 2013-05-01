package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "product_like")
public class Favorite extends IdEntity {
//		private User user_id;
//		private Product product_id;
		private Date create_time;
		
		
		
}
