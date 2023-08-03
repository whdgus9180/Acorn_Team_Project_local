package com.acorn.soso.group_managing.service;

import javax.servlet.http.HttpServletRequest;

import com.acorn.soso.group_managing.dto.GroupManagingDto;

public interface GroupManagingService {
	public void getMemberList(GroupManagingDto dto, HttpServletRequest request);
	public void getKickedMemberList(GroupManagingDto dto, HttpServletRequest request);
	public void getApplicantList(GroupManagingDto dto, HttpServletRequest request);
	public void getRejectedApplicantList(GroupManagingDto dto, HttpServletRequest request);
	public void joinApprove(int num);
	public void getMemberCount(int num, HttpServletRequest request);
	public void kick(int num);
	public void reject(int num);
	public void dropOut(int num);
}
