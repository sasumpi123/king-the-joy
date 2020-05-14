package com.project.kingthejoy.member.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.kingthejoy.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int memberJoin(MemberDto dto) {
		
		return sqlSession.insert("member.join", dto);
	}

	@Override
	public boolean loginCheck(MemberDto dto) {
		String name = sqlSession.selectOne("member.loginCheck", dto);
		return (name == null) ? false : true;
	}

	@Override
	public MemberDto memberView(MemberDto dto) {
		return sqlSession.selectOne("member.memberView", dto);
	}

	@Override
	public void logout(HttpSession session) {
		
	}

}