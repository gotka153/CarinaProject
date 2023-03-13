package com.teamp.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teamp.web.dto.SearchPageDTO;
import com.teamp.web.service.SearchPageService;

@Controller
public class SearchPageController {
	
	@Autowired
	private SearchPageService searchpageservice;

	@GetMapping("/searchpage")
	public ModelAndView search_open() {
		ModelAndView mv = new ModelAndView("searchPage");
		List<SearchPageDTO> list = new ArrayList<SearchPageDTO>();
		list = searchpageservice.LoadAll();
		mv.addObject("list", list);
		return mv;
	}
	
	@ResponseBody
	@GetMapping("/searchbykwd")
	public List<SearchPageDTO> search_By_Kwd(HttpServletRequest request) {
		String kwd = request.getParameter("kwd");
		List<SearchPageDTO> list = new ArrayList<SearchPageDTO>();
		list = searchpageservice.LoadByKwd(kwd);

		return list;
	}
	
	@ResponseBody
	@PostMapping("/searchbyfilter")
	public List<SearchPageDTO> By_Filter_Post(HttpServletRequest request) {
		Map<String , String> map = new HashMap<String , String>();
		String type = request.getParameter("type");
		map.put("type", type);
		String fuel = request.getParameter("fuel");
		map.put("fuel", fuel);
		String mission = request.getParameter("mission");
		map.put("mission", mission);
		String wheeldrt = request.getParameter("wheeldrt");
		map.put("wheeldrt", wheeldrt);
		String psngcap = request.getParameter("psngcap");
		map.put("psngcap", psngcap);
		System.out.println(type + fuel + mission + wheeldrt + psngcap);
		List<SearchPageDTO> list = new ArrayList<SearchPageDTO>();
		list = searchpageservice.LoadByfilter(map);
		System.out.println(list);
		return list;		
	}

}
