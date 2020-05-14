package com.project.kingthejoy.member.biz;

import javax.servlet.http.HttpSession;

import com.project.kingthejoy.member.dto.MemberDto;

public interface MemberBiz {
	
	public int memberJoin(MemberDto dto);
	public boolean loginCheck(MemberDto dto, HttpSession session);
	public MemberDto memberView(MemberDto dto);
	public void logout(HttpSession session);

}
 