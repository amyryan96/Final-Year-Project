package com.example.demo.app.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExerciseService {
	
	@Autowired
	private ExerciseRepository exerRep;

	public void addExercise(Exercise exercise) {
		exerRep.save(exercise);
	}

	/*
	 * public List<Exercise> viewFoodLogs() {
	 * 
	 * List<foodDiary> diaries = new ArrayList<foodDiary>(); for (foodDiary
	 * fooddiary : foodRep.findAll()) { diaries.add(fooddiary); } return diaries; }
	 */
	
	
	public Exercise getByMemberid(int Memberid) {
		return exerRep.findOne(Memberid);

	}

}
