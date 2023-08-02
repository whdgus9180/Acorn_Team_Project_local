package com.acorn.soso.group.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.soso.group.dto.GroupJoinDto;
@Repository
public class GroupJoinDaoImpl implements GroupJoinDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(GroupJoinDto dto) {
		session.insert("join.insert", dto);
	}

}
