package com.example.demo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.member.Employee;
import com.example.demo.member.EmployeeService;
import com.example.demo.member.Member;
import com.example.demo.member.MemberService;

import com.example.demo.member.foodDiary;
import com.example.demo.member.foodDiaryService;
import com.stripe.Stripe;
import com.stripe.model.Charge;

@Controller
public class ApplicationController {

	@Autowired
	private MemberService memberSer;

	private foodDiaryService foodSer;
	
	private EmployeeService empSer;

	@RequestMapping("/")
	public String welcome(HttpServletRequest request) {

		return "welcome";
	}

	@RequestMapping("/register")
	public String register() {
		return "register";
	}

	@PostMapping("/addMember")
	public String registerMember(@ModelAttribute Member mem, BindingResult bindingresult, HttpServletRequest request) {

		memberSer.addMember(mem);
		return "regsuccess";
	}
	
	@PostMapping("/addEmployee")
	public String registerEmployee(@ModelAttribute Employee emp, BindingResult bindingresult, HttpServletRequest request)
	{
		empSer.addEmployee(emp);
		return "regsuccess";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {

		return "login";

	}

	@RequestMapping("/loginMember")
	public String loginMember(@ModelAttribute Member mem, HttpServletRequest request) {
		String email = mem.getEmail();
		String password = mem.getPassword();
		String name = mem.getName();
		if (memberSer.findByEmailAndPassword(email, password) != null) {
			mem = memberSer.findByEmailAndPassword(email, password);
			HttpSession session = request.getSession();
			session.setAttribute("member", mem);
			if (request.getParameter("email").equalsIgnoreCase("admin@gmail.com")) {
				return "adminSuccess";
			} else {
				return "success";
			}
		} else {

			return "failure";
		}
	}
	
	@RequestMapping("/loginEmployee")
	public String loginEmployee(@ModelAttribute Employee emp, HttpServletRequest request)
	{
	String email = emp.getEmail();
	String password = emp.getPassword();
	if(empSer.findByEmailAndPassword(email, password)!=null)
	{
	emp = empSer.findByEmailAndPassword(email, password);
	HttpSession session = request.getSession();
	session.setAttribute("employee", emp);
	return "adminSuccess";
	}
	else {
	return "failure";
	}
	}




	@RequestMapping("/logoutMember")
	public String logoutMember(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "welcome";

	}

	@RequestMapping("/foodDiary")
	public String foodDiary() {
		return "foodDiary";
	}

	@PostMapping("/addfoodDiary")
	public String addfoodDiary(@ModelAttribute foodDiary food, BindingResult bindingresult,
			HttpServletRequest request) {
		foodSer.addFood(food);
		return "foodDiary";
	}

	@GetMapping("/viewFoodLogs")
	public String showFoodLogs(HttpServletRequest request) {
		request.setAttribute("diaries", foodSer.viewFoodLogs());
		return "viewFoodLogs";
	}

	@RequestMapping("/payment")
	public String paymentPage() {
		return "payment";
	}

	@RequestMapping("/purchase")
	public String payment(HttpServletRequest request)
	{
		try {
			
			if(request.getParameter("memberType1") != null)
			{
				if(request.getParameter("memlength1") != null)
				{
				Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
				Map<String, Object> chargeParams = new HashMap<String, Object>();
				String answer;
				int yourPrice;
				double price = (40 * 100);
				int eventPrice = (int) Math.round(price);
				chargeParams.put("amount", eventPrice);
				chargeParams.put("currency", "eur");
				chargeParams.put("description", ("Monthly Adult Membership"));
				chargeParams.put("source", "tok_amex");
				Charge.create(chargeParams);
				}

				else if(request.getParameter("memlength2") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (110 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Adult Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
				else if(request.getParameter("memlength3") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (370 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Adult Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			}
			else if(request.getParameter("memberType2") != null)
			{
				if(request.getParameter("memlength1") != null)
				{
				Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
				Map<String, Object> chargeParams = new HashMap<String, Object>();
				String answer;
				int yourPrice;
				double price = (25 * 100);
				int eventPrice = (int) Math.round(price);
				chargeParams.put("amount", eventPrice);
				chargeParams.put("currency", "eur");
				chargeParams.put("description", ("Monthly Student Membership"));
				chargeParams.put("source", "tok_amex");
				Charge.create(chargeParams);
				}

				else if(request.getParameter("memlength2") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (70 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Student Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
				else if(request.getParameter("memlength3") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (250 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Student Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			}
			else if(request.getParameter("memberType3") != null)
			{
				if(request.getParameter("memlength1") != null)
				{
				Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
				Map<String, Object> chargeParams = new HashMap<String, Object>();
				String answer;
				int yourPrice;
				double price = (15 * 100);
				int eventPrice = (int) Math.round(price);
				chargeParams.put("amount", eventPrice);
				chargeParams.put("currency", "eur");
				chargeParams.put("description", ("Monthly Child Membership"));
				chargeParams.put("source", "tok_amex");
				Charge.create(chargeParams);
				}

				else if(request.getParameter("memlength2") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (40 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("3 Month Child Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
				else if(request.getParameter("memlength3") != null)
				{
					Stripe.apiKey = "sk_test_VXgXbC3NwFjrpxeYOswuogRC00dtn7tiRH";
					Map<String, Object> chargeParams = new HashMap<String, Object>();
					String answer;
					int yourPrice;
					double price = (150 * 100);
					int eventPrice = (int) Math.round(price);
					chargeParams.put("amount", eventPrice);
					chargeParams.put("currency", "eur");
					chargeParams.put("description", ("Yearly Child Membership"));
					chargeParams.put("source", "tok_amex");
					Charge.create(chargeParams);
				}
			}
			
		}
		catch(Exception e)
		{
		
		}
		return "success";
	}

}