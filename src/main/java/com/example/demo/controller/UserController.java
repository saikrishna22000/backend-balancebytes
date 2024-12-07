package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.User;
import com.example.demo.model.UserManager;

@RestController
@RequestMapping("/user")
public class UserController {
	
	
	@Autowired
	UserManager UM;
	
	@PostMapping("/save")  // url mapping for saving or signup
	public String save(@RequestBody User U) {
		return UM.saveUser(U);
	}
	
	
	@PostMapping("/login") // url mapping for login
	public String login(@RequestBody User U) {
		return UM.LogIn(U.getUsername(), U.getPassword());
	}
	
}