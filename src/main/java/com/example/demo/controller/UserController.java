package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping("/save") // URL mapping for signup
    public String save(@RequestBody User user) {
        // Validate username
        if (userRepository.validateUsename(user.getUsername()) > 0) {
            return "uae"; // Username already exists
        }

        // Validate email
        if (userRepository.validateEmail(user.getEmail()) > 0) {
            return "eae"; // Email already exists
        }

        // Save user to the database
        try {
            userRepository.save(user);
            return "us"; // User saved successfully
        } catch (Exception e) {
            return "error"; // Error during save
        }
    }

    @PostMapping("/login") // URL mapping for login
    public String login(@RequestBody User user) {
        // Validate login credentials
        if (userRepository.logInCheck(user.getUsername(), user.getPassword()) > 0) {
            return "success"; // Login successful
        }
        return "Invalid Credentials!!"; // Invalid username or password
    }
}
