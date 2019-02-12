package com.example.demo.controller;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.Member;
import com.example.demo.member.MemberService;

@Controller
public class ApplicationController {

	@Autowired
	private MemberService memberSer;
	
	@RequestMapping("/")
	public String welcome(HttpServletRequest request) {
		
		return "welcome";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@PostMapping("/addMember")
	public String registerMember(@ModelAttribute Member mem, BindingResult bindingresult, HttpServletRequest request)
	{
		memberSer.addMember(mem);
		return "welcome";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) 
	{
		return "login";
		
	}
	
	@RequestMapping("/loginMember")
	public String loginMember(@ModelAttribute Member mem, HttpServletRequest request)
	{
		String email = mem.getEmail();
		String password = mem.getPassword();
		if(memberSer.findByEmailAndPassword(email,password)!=null)
		{
			return "success";
		}
		else {
		
			return "failure";
		}
	}
}
