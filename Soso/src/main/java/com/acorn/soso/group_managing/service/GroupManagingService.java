package com.acorn.soso.group_managing.service;

import javax.servlet.http.HttpServletRequest;

import com.acorn.soso.group_managing.dto.GroupManagingDto;

public interface GroupManagingService {
	public void getMemberList(GroupManagingDto dto, HttpServletRequest request);
	public void getApplicantList(GroupManagingDto dto, HttpServletRequest request);
	public void joinApprove(int num);
	public void getMemberCount(int num, HttpServletRequest request);
}
