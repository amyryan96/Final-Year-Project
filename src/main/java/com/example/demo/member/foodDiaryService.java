package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;

public class foodDiaryService {
	
	@Autowired
	private foodDiaryRepository foodRep;
	
	
	public void addFood(foodDiary food) {
		foodRep.save(food);
	}

}
