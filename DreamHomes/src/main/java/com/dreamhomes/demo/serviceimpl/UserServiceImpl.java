package com.dreamhomes.demo.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dreamhomes.demo.entity.User;
import com.dreamhomes.demo.repository.UserRepo;
import com.dreamhomes.demo.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserRepo userRepo;
	List<User> a1=new ArrayList<>();
	
	@Override
    public User createUser(User user) {
    	return userRepo.save(user);
    }
	@Override
	public List<User> getAllUsers(){
		return userRepo.findAll();
	}
	@Override
	public User updateUser(Integer id, User user) {
		for(User u:a1) {
			if(u.getId().equals(id)){
				u.setName(user.getName());
				u.setUsername(user.getUsername());
				return u;
			}
		}
		return null;
		//throw new UserNotFoundException("Incorrect id : ");
	}
	@Override
    public User deleteUser(Integer id) {
    	User user = userRepo.findById(id).get();
		if(user != null){
			userRepo.delete(user); 
			return user;
		}
		return null;
		//throw new UserNotFoundException("Incorrect id : ");
    }
	@Override
    public User checkAuth(String email,String password) {
    	List<User> a2= userRepo.findByemail(email);
		for(User u:a2) {
			System.out.println(u);
			if(u.getEmail().equals(email) && u.getPassword().equals(password)){
				return u;
			}
		}
		return null;
    }
}
