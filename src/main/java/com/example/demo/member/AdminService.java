package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
	
	@Autowired
	private AdminRepository adminRepo;
	
	
	public void addAdmin(Admin ad) {
		adminRepo.save(ad);
	}
	
	public Admin getByClassid(int classid)
	{
		return adminRepo.findOne(classid);
		
	}
	
	
}
 