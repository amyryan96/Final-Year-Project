package com.example.demo.member;

import org.springframework.data.repository.CrudRepository;

public interface AdminRepository extends CrudRepository<Admin, Integer> {

	public Admin findByUsernameAndPassword(String username, String password);
}
