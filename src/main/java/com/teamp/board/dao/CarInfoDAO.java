package com.teamp.board.dao;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamp.board.dto.CarInfoDTO;

@Repository
@Mapper
public interface CarInfoDAO {
	
	public List<CarInfoDTO> LoadAll();

	public List<CarInfoDTO> LoadByKwd(String kwd);
}
