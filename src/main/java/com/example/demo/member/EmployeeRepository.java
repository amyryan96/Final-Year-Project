package com.example.demo.member;

import org.springframework.data.repository.CrudRepository;

public interface EmployeeRepository extends CrudRepository<Employee, Integer> {

	public Employee findByEmailAndPassword(String email, String password);

}
