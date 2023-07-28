package com.acorn.soso;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.acorn.soso.group.service.GroupService;

@Controller
public class HomeController {
	
	@Autowired
	private GroupService service;
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		List<String> list = new ArrayList<String>();
		list.add("사용자가 처음 접하는 페이지");
		
		request.setAttribute("list", list);
		
		return "home";
	}
	
}
