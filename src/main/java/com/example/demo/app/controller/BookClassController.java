package com.example.demo.app.controller;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.example.demo.app.member.ClassDetails;
import com.example.demo.app.member.ClassDetailsService;
import com.example.demo.app.member.Member;
import com.example.demo.app.member.MemberService;
import com.example.demo.app.member.foodDiary;

@Controller
public class BookClassController {

	@Autowired
	private ClassDetailsService bcs;
	
	@Autowired
	private MemberService memser;

	@RequestMapping("/createClass")
	public String createClass()
	{
		return "addClass";
	}

	@PostMapping("/addClass")
	public String addClass( HttpServletRequest request)
	{

		String name = request.getParameter("className");
		String type = request.getParameter("classType");
		String time = request.getParameter("classTime");
		int quantity = Integer.parseInt(request.getParameter("classQuantity"));
		String date = request.getParameter("date");
		int currentQuantity = 0;
		ClassDetails class1 = new ClassDetails(name, type, time, quantity, date, currentQuantity);

		bcs.addClass(class1);
		return "adminSuccess";
	}

	@RequestMapping("/bookClass")
	public String bookClass()
	{
		return "bookClass";
	}

	@RequestMapping("/bookingClass")
	public String bookingClass(@SessionAttribute("id") int id, HttpServletRequest request, HttpSession session) {

		int quantity = Integer.parseInt(request.getParameter("classQuantity"));
		int currentq = Integer.parseInt(request.getParameter("currenQuantity"));

		int classid = Integer.parseInt(request.getParameter("classToBook"));
		ClassDetails class1 = bcs.getByClassid(classid);
		System.out.println(class1.toString());
		//Member mem1 = (Member)session.getAttribute("member");
		Member mem1 = memser.getByMemberid(id);
		if(currentq <  quantity)
		{
			mem1.getBooking().add(class1);
			memser.upadteMember(mem1.getMemberid(), mem1);
			
		}
		else
		{
			System.out.println("I'm sorry this class has reached it's capacity! Please choose another class or day");
		}


		return "success";
	}

}