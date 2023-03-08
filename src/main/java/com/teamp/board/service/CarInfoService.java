package com.teamp.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamp.board.dao.CarInfoDAO;

@Service
public class CarInfoService {
	
	@Autowired
	private CarInfoDAO carinfodao;
	
	public List<String> LoadAll(){
		return carinfodao.LoadAll();
	}

	public List<String> LoadByKwd(String kwd) {
		// TODO Auto-generated method stub
		return carinfodao.LoadByKwd(kwd);
	}
	
}
