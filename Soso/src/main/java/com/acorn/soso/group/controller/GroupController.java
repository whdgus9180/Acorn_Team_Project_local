package com.acorn.soso.group.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GroupController {
	
	@GetMapping("/group/list")
	public String list() {
		
		return "group/list";
	}
}
