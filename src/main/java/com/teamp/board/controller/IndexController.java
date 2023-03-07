package com.teamp.board.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping("/index")
	public String index_open() {
		System.err.println("접속완료");
		return "index";
	}
	
	
	@GetMapping("/main")
	public String main_open() {
		System.err.println("main 접속완료");
		return "main";
	}
	
	@GetMapping("/openAPI")
	public String openAPI(Model mv) throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B553881/newRegistInfoService/newRegistInfoService"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=gHrSQ3Z%2FGIO2LoLIdgo8Y%2FLcgWtFDCYvvyqUTxZTGrpNZBNIk41NqsLd7zkwLqc%2BYu%2FHjlO1VzXXaPVH5hGHag%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("registYy","UTF-8") + "=" + URLEncoder.encode("2017", "UTF-8")); /*등록된 년도(YYYY)*/
        urlBuilder.append("&" + URLEncoder.encode("registMt","UTF-8") + "=" + URLEncoder.encode("11", "UTF-8")); /*등록된 월(MM)*/
        urlBuilder.append("&" + URLEncoder.encode("vhctyAsortCode","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*차량의 종류별 구분*/
        urlBuilder.append("&" + URLEncoder.encode("registGrcCode","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*광역시도 구분 코드*/
        urlBuilder.append("&" + URLEncoder.encode("useFuelCode","UTF-8") + "=" + URLEncoder.encode("2", "UTF-8")); /*연료 종류 구분 코드*/
        urlBuilder.append("&" + URLEncoder.encode("cnmCode","UTF-8") + "=" + URLEncoder.encode("000004", "UTF-8")); /*차명 구분 위한 코드*/
        urlBuilder.append("&" + URLEncoder.encode("prposSeNm","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*차량 유형 코드*/
        urlBuilder.append("&" + URLEncoder.encode("sexdstn","UTF-8") + "=" + URLEncoder.encode("남자", "UTF-8")); /*성별구분*/
        urlBuilder.append("&" + URLEncoder.encode("agrde","UTF-8") + "=" + URLEncoder.encode("3", "UTF-8")); /*등록자 연령대*/
        urlBuilder.append("&" + URLEncoder.encode("dsplvlCode","UTF-8") + "=" + URLEncoder.encode("2", "UTF-8")); /*배기량 구분을 관리*/
        urlBuilder.append("&" + URLEncoder.encode("hmmdImpSeNm","UTF-8") + "=" + URLEncoder.encode("국산", "UTF-8")); /*국산수입구분명*/
        urlBuilder.append("&" + URLEncoder.encode("prye","UTF-8") + "=" + URLEncoder.encode("2010", "UTF-8")); /*출시된 모델 년도*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        String xml = sb.toString();
        mv.addAttribute("xml", xml);
		
		return "openAPI";
	}
	
}
