package com.acorn.soso.test.dao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface BookService {

	//책의 정보를 불러오기 위한 서비스
	public void getBookList(Model model, HttpServletRequest request);
}
