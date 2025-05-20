package com.dreamhomes.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dreamhomes.demo.entity.User;

@Repository
public interface UserRepo extends JpaRepository<User,Integer>{

	List<User> findByemail(String email);

}
