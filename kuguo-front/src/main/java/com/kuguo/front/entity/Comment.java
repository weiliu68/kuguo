package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "product_comment")
public class Comment extends IdEntity {
	private String content;
	private int agree_num;
	private int disagree_num;
	// private User user_id;
	private Product product;
	private Date create_time;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getAgree_num() {
		return agree_num;
	}

	public void setAgree_num(int agree_num) {
		this.agree_num = agree_num;
	}

	public int getDisagree_num() {
		return disagree_num;
	}

	public void setDisagree_num(int disagree_num) {
		this.disagree_num = disagree_num;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
