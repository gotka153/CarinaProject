package com.teamp.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teamp.board.dto.CarInfoDTO;
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
	public ModelAndView search_open() {
		ModelAndView mv = new ModelAndView("searchPage");
		List<CarInfoDTO> list = new ArrayList<CarInfoDTO>();
		list = carinfoservice.LoadAll();
		mv.addObject("list", list);
		return mv;
	}
	
	@ResponseBody
	@GetMapping("/searchbykwd")
	public List<CarInfoDTO> search_By_Kwd(HttpServletRequest request) {
		String kwd = request.getParameter("kwd");
		List<CarInfoDTO> list = new ArrayList<CarInfoDTO>();
		list = carinfoservice.LoadByKwd(kwd);
		System.out.println(list);

		return list;
	}
}
