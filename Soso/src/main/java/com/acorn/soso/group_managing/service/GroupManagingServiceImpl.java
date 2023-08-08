package com.acorn.soso.group_managing.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.soso.group.dto.GroupDto;
import com.acorn.soso.group_managing.dao.GroupManagingDao;
import com.acorn.soso.group_managing.dto.GroupManagingDto;

@Service
public class GroupManagingServiceImpl implements GroupManagingService{
	
	@Autowired
	GroupManagingDao dao;
	
	@Override
	public void getGroupList(String manager_id, HttpServletRequest request) {
		List<GroupDto> list = dao.getGroupList(manager_id);
		request.setAttribute("list", list);
	}
	
	//소모임 가입 신청자 리스트 불러오기
	@Override
	public void getApplicantList(GroupManagingDto dto, HttpServletRequest request) {
		List<GroupManagingDto> list = dao.getApplicantList(dto);
		request.setAttribute("list", list);
	}
	
	@Override
	public void getRejectedApplicantList(GroupManagingDto dto, HttpServletRequest request) {
		List<GroupManagingDto> list = dao.getRejectedApplicantList(dto);
		request.setAttribute("list", list);
	}	

	@Override
	public void joinApprove(int num) {
		dao.joinApprove(num);
	}

	@Override
	public void getMemberList(GroupManagingDto dto, HttpServletRequest request) {
		List<GroupManagingDto> list = dao.getMemberList(dto);
		request.setAttribute("list", list);
	}
	
	@Override
	public void getKickedMemberList(GroupManagingDto dto, HttpServletRequest request) {
		List<GroupManagingDto> list = dao.getKickedMemberList(dto);
		request.setAttribute("list", list);
		
	}

	@Override
	public void getMemberCount(int num, HttpServletRequest request) {
		int memberCount = dao.getMemberCount(num);
		request.setAttribute("memberCount", memberCount);
	}

	@Override
	public void kick(int num) {
		dao.kick(num);
	}

	@Override
	public void reject(int num) {
		dao.reject(num);
	}

	@Override
	public void dropOut(int num) {
		dao.dropOut(num);
	}

	

	
}
