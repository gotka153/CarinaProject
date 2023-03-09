package com.teamp.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamp.web.dao.SearchPageDAO;
import com.teamp.web.dto.SearchPageDTO;

@Service
public class SearchPageService {
	
	@Autowired
	private SearchPageDAO searchpagedao;
	
	public List<SearchPageDTO> LoadAll(){
		return searchpagedao.LoadAll();
	}

	public List<SearchPageDTO> LoadByKwd(String kwd) {
		// TODO Auto-generated method stub
		return searchpagedao.LoadByKwd(kwd);
	}

	public List<SearchPageDTO> LoadByfilter(String filter) {
		// TODO Auto-generated method stub
		return searchpagedao.LoadByfilter(filter);
	}
	
}
