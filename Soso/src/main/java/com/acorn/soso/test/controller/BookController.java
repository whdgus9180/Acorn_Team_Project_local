package com.acorn.soso.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.acorn.soso.test.dao.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService service;

	//책을 검색하기 위한 컨트롤러
	@GetMapping("/test/booksearch")
	public String bookSearch() {		
		return "test/booksearch";
	}
	
	//책의 리스트를 얻기 위한 컨트롤러
	@GetMapping("/test/bookTest")
	public String bookList(Model model, HttpServletRequest request) {
		service.getBookList(model, request);
		return "test/bookTest";
	}
}
