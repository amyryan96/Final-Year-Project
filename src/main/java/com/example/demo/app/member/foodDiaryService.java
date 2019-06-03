package com.example.demo.app.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class foodDiaryService {

	@Autowired
	private foodDiaryRepository foodRep;

	public void addFood(foodDiary food) {
		foodRep.save(food);
	}

	public List<foodDiary> viewFoodLogs() {

		List<foodDiary> diaries = new ArrayList<foodDiary>();
		for (foodDiary fooddiary : foodRep.findAll()) {
			diaries.add(fooddiary);
		}
		return diaries;
	}

	public foodDiary getByMemberid(int Memberid) {
		return foodRep.findOne(Memberid);

	}
}
