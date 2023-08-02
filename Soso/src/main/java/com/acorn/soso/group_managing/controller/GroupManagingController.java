package com.acorn.soso.group_managing.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.acorn.soso.group_managing.dto.GroupManagingDto;
import com.acorn.soso.group_managing.service.GroupManagingService;

@Controller
public class GroupManagingController {
	
	@Autowired
	GroupManagingService service;
	
	@GetMapping("/group_managing/admin_main")
	public String admin_main() {
		return "group_managing/admin_main";
	}
	
	@GetMapping("/group_managing/user_main")
	public String user_main() {
		return "group_managing/user_main";
	}
	
	@GetMapping("/group_managing/group_insertForm")
	public String group_insertForm() {
		return "group_managing/group_insertForm";
	}
	
	@GetMapping("/group_managing/group_updateForm")
	public String group_updateForm() {
		return "group_managing/group_updateForm";
	}
	
	@GetMapping("/group_managing/group_userdetail")
	public String group_userdetail() {
		return "group_managing/group_userdetail";
	}
	
	@GetMapping("/group_managing/applicantList")
	public String group_applicantList(GroupManagingDto dto, HttpServletRequest request) {
		dto.setGroupNum(1);
		dto.setIsJoin(1);
		service.getApplicantList(dto, request);
		
		return "group_managing/applicantList";
	}
	
	@GetMapping("/group_managing/memberList")
	public String group_memberList() {
		return "group_managing/memberList";
	}
}
