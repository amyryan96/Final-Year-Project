package com.example.demo.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.app.member.Exercise;
import com.example.demo.app.member.ExerciseService;
import com.example.demo.app.member.foodDiary;

@RestController
public class ExerciseController {
	
	
	@Autowired 
	ExerciseService exerSer;
	
	@RequestMapping(method=RequestMethod.POST, value="/exercise")
	public void addExercise(@RequestBody Exercise exercise)
	{
		exerSer.addExercise(exercise);
		
	}


}
