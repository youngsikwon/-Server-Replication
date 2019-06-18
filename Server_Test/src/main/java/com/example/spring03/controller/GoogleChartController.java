package com.example.spring03.controller;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.details.service.GoogleChartService;
//RestController 뷰기 아닌 객체를 리턴할 수 있음.
//ajax에서 백그라운드로 호출하는 코드에 많이 사용
@RestController
@RequestMapping("chart/*")
public class GoogleChartController {
	
	@Inject
	GoogleChartService googleChartService;
	
	//Model  : 데이터 생산
	//Service : 데이터 가공, 트랜잭션 처리
	
	//ArrayList를 JSON으로 가공한 후 ajax로 리턴됨
	//뷰(jsp)로 포어ㅜ딩되는 것이 아닌 json data를 리턴함.
	@RequestMapping("chart2.do")
	public ModelAndView chart2() {
		return new ModelAndView("chart/chart02");
	}
	
	@RequestMapping("chart01")
	public ModelAndView chart1() {
		return new ModelAndView("chart/chart01");
	}
// view(jsp)로 넘어가지 않고 호출한 곳에 JSONObject를 리턴함	
	@RequestMapping("cart_money_list.do")
	public JSONObject cart_money_list() {
		return googleChartService.getChartData();
	}

}
