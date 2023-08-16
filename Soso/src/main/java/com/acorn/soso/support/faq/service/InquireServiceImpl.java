package com.acorn.soso.support.faq.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.acorn.soso.support.faq.dao.InquireDao;
import com.acorn.soso.support.faq.dto.InquireDto;

@Service
public class InquireServiceImpl implements InquireService{
	
	@Autowired
	private InquireDao dao;
	
	@Override
	public void insert(InquireDto dto) {
		dao.insert(dto);
	}

	@Override
	public void getList(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		List<InquireDto> list = dao.getList(id);
		model.addAttribute("list", list);
	}

}
