package com.dreamhomes.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dreamhomes.demo.dto.PropertyFilterDto;
import com.dreamhomes.demo.entity.Property;
import com.dreamhomes.demo.entity.User;
import com.dreamhomes.demo.repository.PropertyRepo;
import com.dreamhomes.demo.repository.UserRepo;
import com.dreamhomes.demo.serviceimpl.PropertyServiceImpl;
import com.dreamhomes.demo.serviceimpl.UserServiceImpl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/view")
public class ViewController {
	
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private PropertyServiceImpl propertyService;
	@Autowired
	private UserRepo userRepo;
	@Autowired
	private PropertyRepo propertyRepo;
	User user = new User();
	
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
			session.setAttribute("user",user);
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
	public String home2(HttpServletRequest request,Model model) {
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String password=(String)session.getAttribute("password");
		System.out.println(email+"  "+password);
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		User user=userService.checkAuth(email, password);
		    if(user!=null){
		    	session.setAttribute("user",user);
			    model.addAttribute("user", user);
			    return "home";
		    }
	    
		return "landing";
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
	
	@RequestMapping("/addproperty")
	public String addProperty(@RequestParam String name,@RequestParam String type,@RequestParam String location, @RequestParam Double price,HttpServletRequest request) {
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		String password=(String)session.getAttribute("password");
		User user=userService.checkAuth(email, password);
	
		Property property=new Property();
		property.setName(name);
		property.setType(type);
		property.setLocation(location);
		property.setPrice(price);
		property.setUser(user);
		propertyRepo.save(property);
		return "sell";
	}
	
	@GetMapping("/properties")
	public ModelAndView getAllProperties()
	{	
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		modelAndView.addObject("properties", propertyService.getAllProperties());
		List<Property> p = (List<Property>) propertyService.getAllProperties();
		System.out.println(p);
		return modelAndView;	
	}
	
	@ResponseBody
	@GetMapping("/allproperty")
	public List<Property> getAllPropertyByFilter(@ModelAttribute PropertyFilterDto propertyFilterDto){
		System.out.println(propertyFilterDto);
		List<Property> list = propertyService.getAllPropertyByFilter(propertyFilterDto);
		System.out.println(list);
		return list;
	}
	
	@GetMapping("/buy")
	public String buy() {
		return "buy";
	}
	@GetMapping("/footer")
	public String footer() {
		return "footer";
	}
	@GetMapping("/*")
	public String errorPage() {
		return "404";
	}
} 
