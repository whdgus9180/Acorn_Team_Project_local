package com.acorn.soso.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SupportController {
	
	@GetMapping("/support/support_main")
	public String support_main() {
		
		return "support/support_main";
	}
	
	@GetMapping("/support/support_faq")
	public String support_faq() {
		
		return "support/support_faq";
	}
	
	@GetMapping("/support/support_notice")
	public String support_notice() {
		
		return "support/support_notice";
	}
	
	@GetMapping("/support/support_inquire")
	public String support_inquire() {
		
		return "support/support_inquire";
	}
}
