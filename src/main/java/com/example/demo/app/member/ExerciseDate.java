package com.example.demo.app.member;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class ExerciseDate {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int goalId;
	private String date;
	
	@OneToMany(targetEntity=Exercise.class, cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private Set<Exercise> exercise = new HashSet<>();

	public ExerciseDate() {
		
	}
	public ExerciseDate(String date) {
		this.date = date;
	}
	public int getGoalId() {
		return goalId;
	}
	public void setGoalId(int goalId) {
		this.goalId = goalId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Set<Exercise> getExercise() {
		return exercise;
	}
	public void setExercise(Set<Exercise> exercise) {
		this.exercise = exercise;
	}
	
	
}
