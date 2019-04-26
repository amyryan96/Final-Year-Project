package com.example.demo.member;

import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	
	public Customer findByUsernameAndPassword(String username, String password);
	

}
