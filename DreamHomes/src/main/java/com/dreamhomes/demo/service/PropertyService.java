package com.dreamhomes.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dreamhomes.demo.dto.PropertyFilterDto;
import com.dreamhomes.demo.entity.Property;

@Service
public interface PropertyService {
	public Property addProperty(Property property);
	public List<Property> getAllProperties();
	public List<Property> getAllPropertyByFilter(PropertyFilterDto filter);
}
