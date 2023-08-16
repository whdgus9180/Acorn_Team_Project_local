package com.acorn.soso.support.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acorn.soso.support.faq.dto.FaqDto;
import com.acorn.soso.support.faq.service.FaqService;



@Controller
public class SupportController {
	@Autowired
	private FaqService service;
	
	@GetMapping("/support/support_main")
	public String support_main() {
		
		return "support/support_main";
	}
	
	@GetMapping("/support/support_faq")
	public String support_faq() {
		
		return "support/support_faq";
	}
	@GetMapping("/support/support_faq_user")
	public String support_faq_user() {
		
		return "support/support_faq_user";
	}
	@GetMapping("/support/support_faq_request")
	public String support_faq_request() {
		
		return "support/support_faq_request";
	}
	@GetMapping("/support/support_faq_open")
	public String support_faq_open() {
		
		return "support/support_faq_open";
	}
	@GetMapping("/support/support_faq_etc")
	public String support_faq_etc() {
		
		return "support/support_faq_etc";
	}
	@GetMapping("/support/support_faq_insertform")
	public String support_faq_insertform() {
		
		return "support/support_faq_insertform";
	}
	
	@GetMapping("/support/support_notice")
	public String support_notice() {
		
		return "support/support_notice";
	}
	
	@GetMapping("/support/support_inquire")
	public String support_inquire() {
		
		return "support/support_inquire";
	}
	@GetMapping("/support/support_inquire_register")
	public String support_inquire_register() {
		
		return "support/support_inquire_register";
	}
	@GetMapping("/support/support_inquire_MyInquire")
	public String support_inquire_MyInquire() {
		
		return "support/support_inquire_MyInquire";
	}
	@PostMapping("/support/support_faq_insert")
	public String insert(FaqDto dto) {
		// 질문 작성자는 세션에서 얻어낸다.
		
		//dto는 질문의 제목과 내용만 있으면 되므로 작성자는 없어도 됨.
		//서비스를 이용해서 질문을 저장
		service.saveFaq(dto);
		return "support/support_faq_insert";
	}
	
}
