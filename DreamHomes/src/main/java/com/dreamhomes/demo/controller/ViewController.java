package com.dreamhomes.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dreamhomes.demo.entity.User;
import com.dreamhomes.demo.repository.UserRepo;
import com.dreamhomes.demo.serviceimpl.UserServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/view")
public class ViewController {
	
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private UserRepo userRepo;
	User user=new User();
	
	@GetMapping("/landing")
	public String landing() {
		return "landing";
	}
	
	@PostMapping("/login2")
	public String login2(@RequestParam String name,@RequestParam String email,@RequestParam String username, @RequestParam String password) {
		User user=new User();
		user.setName(name);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);
		userRepo.save(user);
		return "login";
	}
	
	@PostMapping("/home")
	public String home(@RequestParam String email, @RequestParam String password, Model model, HttpServletRequest request) {
		
		HttpSession session=request.getSession();
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		
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
	@GetMapping("/home2")
	public String home2() {
		return "home";
	}
	@GetMapping("/profile")
	public String profile(HttpServletRequest request,Model model) {
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String password=(String)session.getAttribute("password");
		System.out.println(email+"  "+password);
		
		User user=userService.checkAuth(email, password);
		    if(user!=null){
			    model.addAttribute("user", user);
			    return "profile";
		    }
	    
		return "home";
	}
	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	@GetMapping("/about")
	public String about() {
		return "about";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session=request.getSession();
	    session.invalidate();
		return "landing";
	}
	
	@GetMapping("/sell")
	public String sell() {
		return "sell";
	}
	
	@GetMapping("/buy")
	public String buy() {
		return "buy";
	}
} 
