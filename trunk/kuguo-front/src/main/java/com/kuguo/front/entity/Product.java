package com.kuguo.front.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "product")
public class Product extends IdEntity {
	private String name;
	private String description;
	private String channel;
	private double price;
	private int favorite_num;
	private String picture;
	private String order_link;
	private String brand;
	private Date create_time;
	private int hots;

	// private User user_id;

	public int getFavorite_num() {
		return favorite_num;
	}

	public void setFavorite_num(int favorite_num) {
		this.favorite_num = favorite_num;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@NotBlank
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@NotBlank
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getOrder_link() {
		return order_link;
	}

	public void setOrder_link(String order_link) {
		this.order_link = order_link;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public int getHots() {
		return hots;
	}

	public void setHots(int hots) {
		this.hots = hots;
	}

}
