package com.example.demo.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ClassDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int classId;
	private String className;
	private String classType;
	private String classTime;
	private int classQuantity;
	private String date;
	private int currentQuantity;


	 /* when class is created this is automatically made 0
	 * the when a user is added this increases by one
	 * and when adding a user you will check if this equals quantity and
	 * if it does the user isnt added to the class
	 * because the class is full
	 * */




	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getCurrentQuantity() {
		return currentQuantity;
	}

	public void setCurrentQuantity(int currentQuantity) {
		this.currentQuantity = currentQuantity;
	}

	public ClassDetails()
	{

	}

	public ClassDetails( String className, String classType, String classTime, int classQuantity, String date, int currentQuantity)
	{

		this.className = className;
		this.classType = classType;
		this.classTime = classTime;
		this.classQuantity = classQuantity;
		this.date = date;
		this.currentQuantity = currentQuantity;


	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}


	public String getName() {
		return className;
	}

	public void setName(String name) {
		this.className = name;
	}

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public String getClassTime() {
		return classTime;
	}

	public void setClassTime(String classTime) {
		this.classTime = classTime;
	}

	public int getClassQuantity() {
		return classQuantity;
	}

	public void setClassQuantity(int classQuantity) {
		this.classQuantity = classQuantity;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}





}