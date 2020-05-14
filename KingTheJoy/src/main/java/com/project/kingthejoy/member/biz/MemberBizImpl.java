package com.project.kingthejoy.member.biz;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.kingthejoy.member.dao.MemberDao;
import com.project.kingthejoy.member.dto.MemberDto;

@Service
public class MemberBizImpl implements MemberBiz {

	@Autowired
	private MemberDao dao;
	
	@Override
	public int memberJoin(MemberDto dto) {
		
		return dao.memberJoin(dto);
	}

	@Override
	public boolean loginCheck(MemberDto dto, HttpSession session) {
		boolean result = dao.loginCheck(dto);
		if(result) {
			MemberDto dto2 = memberView(dto);
			
			session.setAttribute("member_id", dto2.getMember_id());
			session.setAttribute("member_name", dto2.getMember_name());
			session.setAttribute("member_seq", dto2.getMember_seq());
			session.setAttribute("member_phone", dto2.getMember_phone());
			session.setAttribute("member_email", dto2.getMember_email());
			session.setAttribute("member_oaddr", dto2.getMember_oaddr());
			session.setAttribute("member_addr", dto2.getMember_addr());
			session.setAttribute("member_detailaddr", dto2.getMember_detailaddr());
			session.setAttribute("member_date", dto2.getMember_date());
		}
		return result;
	}

	@Override
	public MemberDto memberView(MemberDto dto) {
		return dao.memberView(dto);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
