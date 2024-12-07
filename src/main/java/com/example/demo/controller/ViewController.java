package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//this page is for mapping all the the links

@Controller
@RequestMapping("/")
public class ViewController {
	
	@GetMapping("/")
	public ModelAndView login() {
		ModelAndView MV = new ModelAndView();
		MV.setViewName("index");
		return MV;
	}
	
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView  MV = new ModelAndView();
		MV.setViewName("home");
		return MV;
	}

	@GetMapping("/signup")
	public ModelAndView signup() {
		ModelAndView MV = new ModelAndView();
		MV.setViewName("signup");
		return MV;
	}
	@GetMapping("/sample")
	public ModelAndView sample() {
		ModelAndView MV = new ModelAndView();
		MV.setViewName("sample");
		return MV;
	}
	
}
