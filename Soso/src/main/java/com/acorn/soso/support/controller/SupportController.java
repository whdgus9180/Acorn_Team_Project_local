package com.acorn.soso.support.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.acorn.soso.support.faq.dto.FaqDto;
import com.acorn.soso.support.faq.dto.InquireDto;
import com.acorn.soso.support.faq.service.FaqService;
import com.acorn.soso.support.faq.service.InquireService;
import com.acorn.soso.users.service.UsersService;



@Controller
public class SupportController {
	@Autowired
	private FaqService service;
	
	@Autowired
	private UsersService userService;
	
	@Autowired
	private InquireService inquireService;
	
	@GetMapping("/support/support_main")
	public String support_main(HttpServletRequest request, Model model) {
		service.getList(request, model);
		return "support/support_main";
	}
	
	@GetMapping("/support/support_faq")
	public String support_faq(HttpServletRequest request, Model model) {
		//서비스에 HttpServletRequest 객체를 전달해서 응답에 필요한 데이타가 담기도록 하고 
		service.getList(request, model);
		return "support/support_faq";
	}
	@GetMapping("/support/support_faq_user")
	public String support_faq_user(HttpServletRequest request, Model model) {
		service.getList(request, model);
		return "support/support_faq_user";
	}
	@GetMapping("/support/support_faq_request")
	public String support_faq_request(HttpServletRequest request, Model model) {
		service.getList(request, model);
		return "support/support_faq_request";
	}
	@GetMapping("/support/support_faq_open")
	public String support_faq_open(HttpServletRequest request, Model model) {
		service.getList(request, model);
		return "support/support_faq_open";
	}
	@GetMapping("/support/support_faq_etc")
	public String support_faq_etc(HttpServletRequest request, Model model) {
		service.getList(request, model);
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
	public String support_inquire(HttpSession session, Model model) {
		userService.getInfo(session, model);
		return "support/support_inquire";
	}
	
	@PostMapping("/support/support_inquire_submit")
	public String support_inquire_submit(InquireDto dto) {
		inquireService.insert(dto);
		return "support/support_inquire_MyInquire";
	}
	
	@GetMapping("/support/support_inquire_register")
	public String support_inquire_register() {
		
		return "support/support_inquire_register";
	}
	@GetMapping("/support/support_inquire_MyInquire")
	public String support_inquire_MyInquire(HttpSession session, Model model) {
		inquireService.getList(session, model);
		return "support/support_inquire_MyInquire";
	}
	@PostMapping("/support/support_faq_insert")
	public String insert(FaqDto dto) {
	
		//서비스를 이용해서 질문을 저장
		service.saveFaq(dto);
		return "support/support_faq_insert";
	}
}
