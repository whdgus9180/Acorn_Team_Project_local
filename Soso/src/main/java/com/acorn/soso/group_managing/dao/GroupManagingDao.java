package com.acorn.soso.group_managing.dao;

import java.util.List;

import com.acorn.soso.group_managing.dto.GroupManagingDto;

public interface GroupManagingDao {
	//소모임 가입자 목록 불러오기
	public List<GroupManagingDto> getApplicantList(GroupManagingDto dto);
}
