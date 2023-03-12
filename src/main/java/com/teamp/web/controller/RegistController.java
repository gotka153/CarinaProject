package com.teamp.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.teamp.web.dto.AccidentInformationDTO;
import com.teamp.web.dto.TransactionInformationDTO;
import com.teamp.web.dto.VehicleInformationDTO;
import com.teamp.web.service.RegistService;

@Controller
public class RegistController {
	
	@Autowired
	RegistService registService;
	
	@GetMapping("/regist")
	public String regist() {
		return "regist";
	}
	
	@PostMapping("/regist")
    public String regist(@ModelAttribute VehicleInformationDTO vehicleInformationDTO
    					, @ModelAttribute AccidentInformationDTO accidentInformationDTO
    					, @ModelAttribute TransactionInformationDTO transactionInformationDTO
    					, Model model
    					) {
		System.out.println(model);
		System.out.println(vehicleInformationDTO);
		System.out.println(accidentInformationDTO);
		System.out.println(transactionInformationDTO);
		try {
			registService.insertVi(vehicleInformationDTO);
			registService.insertAi(accidentInformationDTO);
			registService.insertTi(transactionInformationDTO);
			System.out.println(model+"성공");
			System.out.println(vehicleInformationDTO+"성공");
			System.out.println(accidentInformationDTO+"성공");
			System.out.println(transactionInformationDTO+"성공");
			model.addAttribute("success", true);
			return "regist";
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());		//console 창이 아닌 페이지에 error메시지 표시 가능
																//error 메시지 표시 하지 않을거라면 model이 없어도 되나?
			System.out.println(model+"실패");
			System.out.println(vehicleInformationDTO+"실패");
			System.out.println(accidentInformationDTO+"실패");
			System.out.println(transactionInformationDTO+"실패");
			
			return "regist";	//실패시 접속페이지 생각해 놓기
		}
	}
}