package com.teamp.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hamcrest.core.IsNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import com.teamp.board.service.CarInfoService;

@Controller
public class IndexController {
	
	@Autowired
	private CarInfoService carinfoservice;
	
	@GetMapping("/index")
	public String index_open() {
		System.err.println("접속완료");
		return "index";
	}
	
	
	@GetMapping("/searchpage")
	public ModelAndView search_open(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("searchPage");
		List<String> list = new ArrayList<String>();
		System.out.println(request.getParameter("kwd"));
		if(request.getParameter("kwd")==null) {
		list=carinfoservice.LoadAll();
		} else {
			String kwd = request.getParameter("kwd");
			list=carinfoservice.LoadByKwd(kwd);
		}
		mv.addObject("list", list);
		System.err.println("검색페이지 접속완료");
		System.out.println(list.toString());
		
		return mv;
	}
	
}
