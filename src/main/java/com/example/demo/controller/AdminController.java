package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.Admin;
import com.example.demo.member.AdminService;
import com.example.demo.member.Customer;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService ad;
	
	@RequestMapping("/createAdmin")
	public String createAdmin()
	{
		return "addClass";
	}
	
	@PostMapping("/addAdmin")
	public String addAdmin( HttpServletRequest request)
	{
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		Admin admin1 = new Admin(name, username, password);

		ad.addAdmin(admin1);
		return "adminSuccess";
	}
	
	

}
