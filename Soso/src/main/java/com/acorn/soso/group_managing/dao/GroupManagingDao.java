package com.acorn.soso.group_managing.dao;

import java.util.List;

import com.acorn.soso.group_managing.dto.GroupManagingDto;

public interface GroupManagingDao {
	//소모임 가입자 목록 불러오기
	public List<GroupManagingDto> getMemberList(GroupManagingDto dto);
	//소모임 가입 신청자 목록 불러오기
	public List<GroupManagingDto> getApplicantList(GroupManagingDto dto);
	//소모임 가입 승인하기
	public void joinApprove(int num);
	//소모임 가입자 숫자 불러오기
	public int getMemberCount(int num);
}
