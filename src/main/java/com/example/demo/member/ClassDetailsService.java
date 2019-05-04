package com.example.demo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClassDetailsService {

	@Autowired
	private ClassDetailsRepository addClassRepo;


	public void addClass(ClassDetails bc) {
		addClassRepo.save(bc);
	}

	public ClassDetails getByClassid(int classid)
	{
		return addClassRepo.findOne(classid);

	}


}
