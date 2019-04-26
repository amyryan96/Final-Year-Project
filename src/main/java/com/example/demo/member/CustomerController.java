package com.example.demo.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService custSer;
	
	@RequestMapping("/allcustomers")
	public List<Customer> getAllCustomers()
	{
		return custSer.getAllCustomers();
	}
	
	@RequestMapping("/customers/{Customerid}")
		public Customer getCustomerByCustomerid(@PathVariable("Customerid") int Customerid) {
			return custSer.getByCustomerid(Customerid);
		}


	@RequestMapping(method=RequestMethod.POST, value="/customer")
	public void addCustomer(@RequestBody Customer cust)
	{
		custSer.addCustomer(cust);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/customer/{Customerid}")
	public void updateCustomer(@RequestBody Customer cust, @PathVariable("Customerid") int Customerid)
	{
		custSer.updateCustomer(Customerid, cust);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/customer/{Customerid}")
	public void deleteCustomer(@PathVariable("Customerid") int Customerid)
	{
		custSer.deleteCustomer(Customerid);
	}
	
	
	
	
	
}
