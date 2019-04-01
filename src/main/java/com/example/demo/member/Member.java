package com.example.demo.member;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Member {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int Memberid;
	private String name;
	private String email;
	private String phoneNum;
	private String password;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private Set<ClassDetails> booking = new HashSet<>();
	
	
	public Set<ClassDetails> getBooking() {
		return booking;
	}

	public void setBooking(Set<ClassDetails> booking) {
		this.booking = booking;
	}
	
	@OneToMany
	private Set<foodDiary> diary = new HashSet<>();
	
	public Set<foodDiary> getDiary() {
		return diary;
	}


	public void setDiary(Set<foodDiary> diary) {
		this.diary = diary;
	}


	public Member()
	{
		
	}
	
	
	public Member(int Memberid, String name, String email, String phoneNum, String password) {
		
		this.Memberid = Memberid;
		this.name = name;
		this.email = email;
		this.phoneNum = phoneNum;
		this.password = password;
	}

	
	public int getMemberid() {
		return Memberid;
	}



	public void setMemberid(int Memberid) {
		this.Memberid = Memberid;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhoneNum() {
		return phoneNum;
	}



	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	
	
}

