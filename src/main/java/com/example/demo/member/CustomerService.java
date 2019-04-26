package com.example.demo.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository custRep;
	
	public List<Customer> getAllCustomers(){
		List<Customer> customers = new ArrayList<Customer>();
		
		for(Customer customer: custRep.findAll()) {
			customers.add(customer);
		}
		return customers;
	}
	
	public Customer getByCustomerid(int Customerid)
	{
		return custRep.findOne(Customerid);
		
	}
	
	public void updateCustomer(int Customerid, Customer customer)
	{
		custRep.save(customer);
		
	}
	public void deleteCustomer(int Customerid)
	{
		custRep.delete(Customerid);
	}
	
	public void addCustomer(Customer cust) {
		custRep.save(cust);
	}
	
	public Customer findByUsernameAndPassword(String username, String password)
	{
		return custRep.findByUsernameAndPassword(username, password);
	}
	
	

}
