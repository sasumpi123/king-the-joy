package com.project.kingthejoy.children.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.kingthejoy.children.dto.ChildrenDto;

public interface ChildrenDao {
	
	public List<ChildrenDto> selectList(int school_seq,int from, int to);
	
	public int totalpage (HttpSession session);
	
	public int insert(ChildrenDto dto);
	
	
}
