package com.example.demo.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExerciseDateService {
	
	@Autowired
	private ExerciseDateRepository exerDateRep;

	public void addExerciseDate(ExerciseDate exercise) {
		exerDateRep.save(exercise);
	}

	
	public ExerciseDate getById(int Memberid) {
		return exerDateRep.findOne(Memberid);

	}

}
