package com.acorn.soso.group.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.soso.group.dto.JjimDto;

@Repository
public class JjimDaoImpl implements JjimDao{
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(JjimDto dto) {
		session.insert("jjim.insert", dto);
	}

	@Override
	public void delete(JjimDto dto) {
		session.delete("jjim.delete", dto);
	}

	@Override
	public JjimDto getData(JjimDto dto) {
		return session.selectOne("jjim.getData", dto);
	}
}
