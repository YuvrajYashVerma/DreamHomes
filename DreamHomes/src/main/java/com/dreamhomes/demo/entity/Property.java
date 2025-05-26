package com.dreamhomes.demo.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Property {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column
	private String name;
	@Column
	private String type;
	@Column
	private String location;
	@Column
	private Double price; 
	@ManyToOne(targetEntity = User.class)
	private User user;
	public Property() {
		super();
	}
	public Property(Integer id, String name, String type, String location, Double price, User user) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.location = location;
		this.price = price;
		this.user = user;
	}
	@Override
	public String toString() {
		return "Property [id=" + id + ", name=" + name + ", type=" + type + ", location=" + location + ", price="
				+ price + ", user=" + user + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
