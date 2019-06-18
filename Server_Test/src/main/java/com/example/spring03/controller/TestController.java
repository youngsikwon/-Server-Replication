package com.example.spring03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chart/*")
public class TestController {
	
	
	
	@RequestMapping("Chart_Test")
	public String test() {
		return "/chart/Chart_Test";
	}

}
