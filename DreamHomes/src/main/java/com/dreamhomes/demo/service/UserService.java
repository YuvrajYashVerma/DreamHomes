package com.dreamhomes.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.dreamhomes.demo.entity.User;

@Service
public interface UserService {
	
	User createUser(User user);
	
	List<User> getAllUsers();
	
	User updateUser(Integer id, User user);
	
    User deleteUser(Integer id);
    
    User checkAuth(String email,String password);
}