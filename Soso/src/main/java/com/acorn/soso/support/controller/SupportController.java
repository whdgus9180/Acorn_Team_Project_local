package com.acorn.soso.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SupportController {
	
	@GetMapping("/support/support_main")
	public String support_main() {
		
		return "support/support_main";
	}
}
