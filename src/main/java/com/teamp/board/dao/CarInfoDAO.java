package com.teamp.board.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface CarInfoDAO {
	
	public List<String> LoadAll();

	public List<String> LoadByKwd(String kwd);
}
