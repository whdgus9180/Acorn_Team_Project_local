package com.acorn.soso.group_managing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GroupManagingController {
	
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
}
