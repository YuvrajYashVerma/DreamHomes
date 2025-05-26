package com.dreamhomes.demo.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dreamhomes.demo.entity.Property;
import com.dreamhomes.demo.repository.PropertyRepo;
import com.dreamhomes.demo.service.PropertyService;

@Service
public class PropertyServiceImpl implements PropertyService{
	@Autowired
	PropertyRepo propertyRepo;
	
	@Override
	public Property addProperty(Property property) {
		return propertyRepo.save(property);
	}
	@Override
	public List<Property> getAllProperties(){
		return propertyRepo.findAll();
	}
	@Override
	public List<Property> getAllPropertyByFilter(){
		return null;
	}
}
