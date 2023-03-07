package com.teamp.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("/index")
	public String index_open() {
		System.err.println("접속완료");
		return "index";
	}
	
	
	@GetMapping("/main")
	public String main_open() {
		System.err.println("main 접속완료");
		return "main";
	}
	
}
