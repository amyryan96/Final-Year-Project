package com.example.demo.app.member;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Gym {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int GymId;
	private String location;
	private String email;
	private String phone;

	@OneToMany 
	private Set<Employee> emp = new HashSet<Employee>();

	@OneToMany 
	private Set<Member> mem = new HashSet<Member>();

	@OneToOne
	private ClassDetails class1;


	public Gym()
	{

	}


	public Gym(String location, String email, String phone, ClassDetails class1) {
		super();
		this.location = location;
		this.email = email;
		this.phone = phone;
		this.class1 = class1;
	}


	public ClassDetails getClass1() {
		return class1;
	}


	public void setClass1(ClassDetails class1) {
		this.class1 = class1;
	}


	public int getGymId() {
		return GymId;
	}

	public void setId(int GymId) {
		GymId = GymId;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}


	public Set<Employee> getEmp() {
		return emp;
	}


	public void setEmp(Set<Employee> emp) {
		this.emp = emp;
	}


	public Set<Member> getMem() {
		return mem;
	}


	public void setMem(Set<Member> mem) {
		this.mem = mem;
	}

}


