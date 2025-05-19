package com.dreamhomes.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/view2")
public class MainController {
	
	@GetMapping("/test")
	public String ram() {
		return "ram";
	}
}
