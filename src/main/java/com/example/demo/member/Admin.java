package com.example.demo.member;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Admin {
	
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int id;
		private String name;
		

		private String username;
		private String password;
		
		public Admin(String name, String username, String password)
		{
			super();
			this.name = name;
			this.username = username;
			this.password = password;
			
		}
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
		
		public Admin()
		{
			
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}

		@Override
		public String toString() {
			return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
		}
		
		
		
	}

