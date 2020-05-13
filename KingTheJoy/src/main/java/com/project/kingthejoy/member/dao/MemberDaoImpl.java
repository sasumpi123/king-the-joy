package com.project.kingthejoy.member.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.kingthejoy.member.dto.MemberDto;
import com.project.kingthejoy.school.dto.SchoolDto;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int memberJoin(MemberDto memberDto) {
		return sqlSession.insert("member.join", memberDto);
	}

	@Override
	public boolean loginCheck(MemberDto memberDto) {
		String name = sqlSession.selectOne("member.loginCheck", memberDto);
		return (name == null) ? false : true;
	}

	@Override
	public MemberDto memberView(MemberDto memberDto) {
		return sqlSession.selectOne("member.memberView", memberDto);
	}

	@Override
	public void logout(HttpSession session) {
	}
	
	@Override
	public void insertChildInfo(Map<String,String> data){
		 sqlSession.insert("member.insertChildInfo", data);
		
	}
	
	@Override
	public void insertSchoolInfo(Map<String, String> data){
		sqlSession.insert("member.insertSchoolInfo", data);
	}

	@Override
	public SchoolDto selectSchool(SchoolDto schoolDto) {
		
		return sqlSession.selectOne("member.selectSchool", schoolDto);
	}

	@Override
	public int selectChildrenSeqOfSchool(int member_seq) {
		if(sqlSession.selectOne("member.selectChildrenSeqOfSchool", member_seq)==null) {
			return -1;
		}else {
			return sqlSession.selectOne("member.selectChildrenSeqOfSchool", member_seq);
		}
	}

	@Override
	public int selectSchoolSeq(Map<String, String> schoolListMap) {
		return sqlSession.selectOne("member.selectSchoolSeq", schoolListMap);
	}

	@Override
	public int insertSchool(Map<String, Integer> schoolMap) {
		if(schoolMap.get("childresn_seq")==null) {
			return sqlSession.insert("member.teacherMasterInsertSchool", schoolMap);
		}else {
			return sqlSession.insert("member.insertSchool", schoolMap);
		}
	}

	@Override
	public int selectSchoolSeqOfParent(int member_seq) {
		return sqlSession.selectOne("member.selectSchoolSeqOfParent", member_seq);
	}

	@Override
	public int selectSchoolSeqOfMasterAndTeacher(int member_seq) {
		if(sqlSession.selectOne("member.selectSchoolSeqOfMasterAndTeacher", member_seq)==null) {
			return -1;
		}else {
			return sqlSession.selectOne("member.selectSchoolSeqOfMasterAndTeacher", member_seq);
		}
	}

}