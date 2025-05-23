package com.dreamhomes.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dreamhomes.demo.entity.Property;
import com.dreamhomes.demo.serviceimpl.PropertyServiceImpl;

@RestController
@RequestMapping("/property")
public class PropertyController {
	@Autowired
	PropertyServiceImpl propertyServiceImp;
	
	@PostMapping("/add")
	public Property addProperty(@RequestBody Property property) {
		return propertyServiceImp.addProperty(property);
	}
	
	@GetMapping("/get")
	public List<Property> getProperty(){
		return propertyServiceImp.getAllProperty();
	}
}
