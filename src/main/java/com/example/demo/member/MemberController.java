package com.example.demo.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MemberController {

	@Autowired
	private MemberService memSer;
	
	@RequestMapping("/allmembers")
	public List<Member> getAllMembers()
	{
		return memSer.getAllMembers();
	}
	
	@RequestMapping("/members/{Id}")
		public Member getMemberById(@PathVariable("Id") int Id) {
			return memSer.getById(Id);
		}


	@RequestMapping(method=RequestMethod.POST, value="/member")
	public void addMember(@RequestBody Member mem)
	{
		memSer.addMember(mem);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/member/{Id}")
	public void updateMember(@RequestBody Member mem, @PathVariable("Id") int Id)
	{
		memSer.upadteMember(Id, mem);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/member/{Id}")
	public void deleteMember(@PathVariable("Id") int Id)
	{
		memSer.deleteMember(Id);
	}
	
	
	
}
