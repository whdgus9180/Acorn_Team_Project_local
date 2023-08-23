package com.acorn.soso.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.soso.test.dto.BookDto;
import com.acorn.soso.test.service.BookService;

@Controller
public class BookController {
	
	@Autowired
	private BookService service;
	
	@ResponseBody
	@RequestMapping("/test/addList")
	public BookDto addList(BookDto dto) {
		return dto;
	}
	
	@PostMapping("/test/saveBook")
	public ResponseEntity<String> saveBook(@RequestBody List<BookDto> bookList) {
	    try {
	        for (BookDto dto : bookList) {
	            service.saveBook(dto);
	        }
	        return ResponseEntity.ok("성공");
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("저장 실패");
	    }
	}

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
