package com.dreamhomes.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dreamhomes.demo.entity.User;
import com.dreamhomes.demo.serviceimpl.UserServiceImpl;

@Controller
@RequestMapping("/view")
public class ViewController {
	
	@Autowired
	private UserServiceImpl userService;
	User user=new User();
	
	@GetMapping("/landing")
	public String landing() {
		return "landing";
	}
	
	@PostMapping("/login2")
	public String login2(@RequestParam String name,@RequestParam String email,@RequestParam String username, @RequestParam String password) {
		user.setName(name);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
		userService.createUser(user);
		return "login";
	}
	
	@PostMapping("/home")
	public String home(@RequestParam String email, @RequestParam String password, Model model) {
		User user=userService.checkAuth(email, password);
		if(user!=null) {
			model.addAttribute("user", user);
			return "home";
		}
		return "register";
	}
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
} 
