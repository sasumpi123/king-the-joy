package com.project.kingthejoy.member.dao;

import javax.servlet.http.HttpSession;

import com.project.kingthejoy.member.dto.MemberDto;

public interface MemberDao {

	public int memberJoin(MemberDto dto);
	public boolean loginCheck(MemberDto dto);
	public MemberDto memberView(MemberDto dto);
	public void logout(HttpSession session);
}
