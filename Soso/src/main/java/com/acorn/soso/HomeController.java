package com.acorn.soso;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		List<String> list = new ArrayList<String>();
		list.add("사용자가 처음 접하는 페이지");
		
		request.setAttribute("list", list);
		
		return "home";
	}
	
}
