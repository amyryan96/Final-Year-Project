package com.example.demo.app.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Resource {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long Id;
	
	private String name;
	
	
	public Resource()
	{
		
	}
	
	public Resource(Long Id, String name)
	{
		this.Id = Id;
		this.name = name;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
