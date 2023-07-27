package com.acorn.soso.intro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IntroController {
	@GetMapping("/intro/intro_main")
	public String Intro_main() {
		return "intro/intro_main";
	}
}
