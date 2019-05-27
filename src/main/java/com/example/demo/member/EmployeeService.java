package com.example.demo.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository empRep;


	public void addEmployee(Employee emp) {
		empRep.save(emp);
	}

	public Employee findByEmailAndPassword(String email, String password)
	{
		return empRep.findByEmailAndPassword(email, password);
	}


	public List<Employee> getAllEmployees(){
		List<Employee> employees = new ArrayList<Employee>();

		for(Employee employee: empRep.findAll()) {
			employees.add(employee);
		}
		return employees;
	}

	public Employee getByEmployeeid(int Employeeid)
	{
		return empRep.findOne(Employeeid);

	}

	}
