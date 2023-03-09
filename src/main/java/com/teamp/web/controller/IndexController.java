package com.teamp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class IndexController {

	@GetMapping("/index")
	public String index_open() {
		System.err.println("접속완료");
		return "index";
	}

	
}
