package com.example.demo.app.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class foodDiary {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int diaryId;
	private String foodType;
	private int calories;
	private String timeOfDay;
	private String date;


	public foodDiary()
	{

	}

	public foodDiary(int diaryId, String foodType, int calories, String timeOfDay, String date)
	{
		this.diaryId = diaryId;
		this.foodType = foodType;
		this.calories = calories;
		this.timeOfDay = timeOfDay;
		this.date = date;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getDiaryId() {
		return diaryId;
	}

	public void setDiaryId(int diaryId) {
		this.diaryId = diaryId;
	}

	public String getFoodType() {
		return foodType;
	}

	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	public int getCalories() {
		return calories;
	}

	public void setCalories(int calories) {
		this.calories = calories;
	}

	public String getTimeOfDay() {
		return timeOfDay;
	}

	public void setTimeOfDay(String timeOfDay) {
		this.timeOfDay = timeOfDay;
	}




}