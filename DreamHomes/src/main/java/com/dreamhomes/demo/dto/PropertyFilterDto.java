package com.dreamhomes.demo.dto;

public class PropertyFilterDto {
	
	private Integer size;
	
	private String location;
	
	private Double price;
	
	//private String city;
	
	private String type;
	
	public PropertyFilterDto() {
		super();
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
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

	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
