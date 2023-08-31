package com.acorn.soso.group_managing.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.soso.group_managing.dto.GroupMemberInfoDto;

@Repository
public class GroupMemberInfoDaoImpl implements GroupMemberInfoDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<GroupMemberInfoDto> getGroupMemberWritingList(GroupMemberInfoDto dto) {
		return session.selectList("groupMemberInfo.getWritingList", dto);
	}

	@Override
	public List<GroupMemberInfoDto> getGroupMemberCommentList(GroupMemberInfoDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getGroupMemberWCount(GroupMemberInfoDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getGroupMemberCCount(GroupMemberInfoDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
