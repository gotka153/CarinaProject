package com.teamp.web.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamp.web.dto.SearchPageDTO;

@Repository
@Mapper
public interface SearchPageDAO {
	
	public List<SearchPageDTO> LoadAll();

	public List<SearchPageDTO> LoadByKwd(String kwd);

	public List<SearchPageDTO> LoadByfilter(Map map);
}
