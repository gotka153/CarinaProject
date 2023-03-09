package com.teamp.web.controller;

import java.util.ArrayList;
import java.util.List;

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
	
//	@ResponseBody
//	@GetMapping("/searchbyfilter")
//	public List<SearchPageDTO> By_Filter() {	
//		List<SearchPageDTO> list = new ArrayList<SearchPageDTO>();
//		list = searchpageservice.LoadAll();
//		return list;		
//	}
	
	@ResponseBody
	@GetMapping("/searchbyfilter")
	public List<SearchPageDTO> By_Filter_Post(HttpServletRequest request) {	
		String filter = request.getParameter("model_name");
		List<SearchPageDTO> list = new ArrayList<SearchPageDTO>();
		if(filter == null) {
			list = searchpageservice.LoadAll();
		} else {
			list = searchpageservice.LoadByfilter(filter);
			}
		return list;		
	}

}
