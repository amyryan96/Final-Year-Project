package com.example.demo.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {

@Autowired
private EmployeeService empSer;


	@RequestMapping(method=RequestMethod.POST, value="/employee")
	public void addEmployee(@RequestBody Employee emp)
	{
		empSer.addEmployee(emp);
	}

}
