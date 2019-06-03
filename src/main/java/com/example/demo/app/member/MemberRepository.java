package com.example.demo.app.member;

import org.springframework.data.repository.CrudRepository;

public interface MemberRepository extends CrudRepository<Member, Integer> {
	
	public Member findByEmailAndPassword(String email, String password);
	

}