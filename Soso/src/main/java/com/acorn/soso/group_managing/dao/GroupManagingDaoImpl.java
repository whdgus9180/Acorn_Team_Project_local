package com.acorn.soso.group_managing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.soso.group_managing.dto.GroupManagingDto;

@Repository
public class GroupManagingDaoImpl implements GroupManagingDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<GroupManagingDto> getApplicantList(GroupManagingDto dto) {
		return session.selectList("groupManaging.getApplicantList", dto);
	}
	
	@Override
	public List<GroupManagingDto> getMemberList(GroupManagingDto dto) {
		return session.selectList("groupManaging.getMemberList", dto);
	}

	@Override
	public void joinApprove(int num) {
		session.update("groupManaging.joinApprove", num);
	}

	
}
