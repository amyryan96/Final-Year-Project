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
	
	@RequestMapping("/members/{Memberid}")
		public Member getMemberByMemberid(@PathVariable("Memberid") int Memberid) {
			return memSer.getByMemberid(Memberid);
		}


	@RequestMapping(method=RequestMethod.POST, value="/member")
	public void addMember(@RequestBody Member mem)
	{
		memSer.addMember(mem);
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/member/{Memberid}")
	public void updateMember(@RequestBody Member mem, @PathVariable("Memberid") int Memberid)
	{
		memSer.upadteMember(Memberid, mem);
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/member/{Memberid}")
	public void deleteMember(@PathVariable("Memberid") int Memberid)
	{
		memSer.deleteMember(Memberid);
	}
	
	
	
	
	
}
