package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class foodDiaryController {
	
	@Autowired
	private foodDiaryService foodSer;
	
	
	@RequestMapping(method=RequestMethod.POST, value="/food")
	public void addFood(@RequestBody foodDiary food)
	{
		foodSer.addFood(food);
	}
	

}
