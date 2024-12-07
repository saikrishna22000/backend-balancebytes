package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.UserRepository;

@Service
public class UserManager {
	
	@Autowired
	UserRepository UR;
	
	public String saveUser(User U) { //signup
		try {
			if(UR.validateUsename(U.username) == 1) { //check for duplicate username in the db
				throw new Exception("uae");
			}
			else if(UR.validateEmail(U.email) == 1) {  //check for duplicate email in the db
				throw new Exception("eae");
			}
			else {   //save user data or new signup
				UR.save(U);
				return "us";
			}
			
		}catch (Exception e){
			return e.getMessage();
		}
	}
	
	public String LogIn(String uname, String pwd){
		
		try {
			if(UR.logInCheck(uname, pwd) == 1) {
				return "Logging In!";
			}else {
				throw new Exception("Invalid Credentials!!");
			}
		} catch (Exception e) {
			return e.getMessage();
		}
		
	}
	
}
