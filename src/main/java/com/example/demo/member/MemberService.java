package com.example.demo.member;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberRepository memberRep;

	public List<Member> getAllMembers(){
		List<Member> members = new ArrayList<Member>();

		for(Member member: memberRep.findAll()) {
			members.add(member);
		}
		return members;
	}

	public Member getByMemberid(int Memberid)
	{
		return memberRep.findOne(Memberid);

	}

	public void upadteMember(int Memberid, Member member)
	{
		memberRep.save(member);

	}
	public void deleteMember(int Memberid)
	{
		memberRep.delete(Memberid);
	}

	public void addMember(Member mem) {
		memberRep.save(mem);
	}

	public Member findByEmailAndPassword(String email, String password)
	{
		return memberRep.findByEmailAndPassword(email, password);
	}



}