package com.example.demo.app.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Exercise {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int exerciseId;
	private int cardioTime;
	private int weightTime;
	private int caswTime;
	private String day;
	
	public Exercise(int exerciseId, int cardioTime, int weightTime, int caswTime, String day)
	{
		this.exerciseId= exerciseId;
		this.cardioTime = cardioTime;
		this.weightTime = weightTime;
		this.caswTime = caswTime;
		this.day = day;
		
	}
	
	

	public String getDay() {
		return day;
	}



	public void setDay(String day) {
		this.day = day;
	}



	public Exercise ()
	{
		
	}

	
	
	public int getExerciseId() {
		return exerciseId;
	}

	public void setExerciseId(int exerciseId) {
		this.exerciseId = exerciseId;
	}

	public int getCardioTime() {
		return cardioTime;
	}

	public void setCardioTime(int cardioTime) {
		this.cardioTime = cardioTime;
	}

	public int getWeightTime() {
		return weightTime;
	}

	public void setWeightTime(int weightTime) {
		this.weightTime = weightTime;
	}

	public int getCaswTime() {
		return caswTime;
	}

	public void setCaswTime(int caswTime) {
		this.caswTime = caswTime;
	}


}
