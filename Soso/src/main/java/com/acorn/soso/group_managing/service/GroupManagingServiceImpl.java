package com.acorn.soso.group_managing.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acorn.soso.group_managing.dao.GroupManagingDao;
import com.acorn.soso.group_managing.dto.GroupManagingDto;

@Service
public class GroupManagingServiceImpl implements GroupManagingService{
	
	@Autowired
	GroupManagingDao dao;
	
	//소모임 가입 신청자 리스트 불러오기
	@Override
	public void getApplicantList(GroupManagingDto dto, HttpServletRequest request) {
		List<GroupManagingDto> list = dao.getApplicantList(dto);
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
}
