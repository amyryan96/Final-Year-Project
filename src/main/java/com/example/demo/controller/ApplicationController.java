package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.Cart;
import com.example.demo.member.CartService;
import com.example.demo.member.Customer;
import com.example.demo.member.CustomerService;

@Controller
public class ApplicationController {

	@Autowired
	private CustomerService custSer;
	
	private CartService cartSer; 
	
	
	@RequestMapping("/")
	public String welcome(HttpServletRequest request) {
		
		return "welcome";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@PostMapping("/addCustomer")
	public String registerCustomer(@ModelAttribute Customer cust, BindingResult bindingresult, HttpServletRequest request)
	{
		
		custSer.addCustomer(cust);
		return "regsuccess";
	}
	
	@PostMapping("/addItem")
	public String addItem(@ModelAttribute Cart cart, BindingResult bindingresult, HttpServletRequest request)
	{
		
		cartSer.addItem(cart);
		return "adminSuccess";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request) 
	{
		
		return "login";
		
	}
	
	@RequestMapping("/loginCustomer")
	public String loginCustomer(@ModelAttribute Customer cust, HttpServletRequest request)
	{
		String username = cust.getUsername();
		String password = cust.getPassword();
		
		if(custSer.findByUsernameAndPassword(username,password)!=null)
		{
			cust = custSer.findByUsernameAndPassword(username,password);
			HttpSession session = request.getSession();
			session.setAttribute("customer", cust);
			if(request.getParameter("username").equalsIgnoreCase("admin@gmail.com")) {
				return "adminSuccess";
			}else {
				return "success";
			}
		}
		else {
		
			return "failure";
		}
	}
	
	@RequestMapping("/logoutMember")
	public String logoutMember(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.invalidate();
		return "welcome";
		
	}
	
	
	@RequestMapping("/shoppingCart")
	public String cart(HttpServletRequest request)
	{
		return "shop";
	}
	
	
	/*@PostMapping("/submititem")
	public String item(HttpServletRequest request)
	{
		
	}*/
	
}
