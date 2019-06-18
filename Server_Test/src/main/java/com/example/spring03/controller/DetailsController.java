package com.example.spring03.controller;


import java.util.Locale;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.details.service.DetailsService;

@Controller
@RequestMapping("/View/*")
public class DetailsController {

	private Logger logger = LoggerFactory.getLogger(DetailsController.class);
	
	@Inject
	DetailsService detailsService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;

	
	
	
	@RequestMapping("/index")
	public String index(@RequestParam String t_group_id, Model model, HttpServletResponse response, Locale locale, HttpServletRequest request, ModelAndView mav) {
		
		model.addAttribute("dto", detailsService.view(t_group_id));//발전량
		model.addAttribute("weather", detailsService.group_weather(t_group_id));//날씨정보
		model.addAttribute("sensor_date", detailsService.sensordate(t_group_id));//센서데이터
		model.addAttribute("t_alarm", detailsService.t_alarm(t_group_id));//고장 정보
		model.addAttribute("tracker", detailsService.tracker(t_group_id));//트래커 퍼센트 정보
		model.addAttribute("total_data", detailsService.total_data(t_group_id));//현재, 누적 발전
		model.addAttribute("inverter_date", detailsService.inverter_date(t_group_id));//금일 
		model.addAttribute("inverter_today", detailsService.inverter_today(t_group_id) ); //전 발전량
		model.addAttribute("Cumulative_power_generation", detailsService.Cumulative_power_generation(t_group_id) ); //전 발전량
		
		model.addAttribute("GROUP_ADDR", detailsService.Addr(t_group_id) ); //군집 주소
		logger.info("군집 주소 들어감", detailsService.Addr(t_group_id));
		
		mav.addObject("group_id", detailsService.t_group_id(t_group_id));
		logger.info("들어감?", detailsService.t_group_id(t_group_id));

		logger.info("무엇이 들어감? 오늘 발전량?" + detailsService.inverter_today(t_group_id));
		logger.info("키 값이 들어갔는지.", detailsService.t_group_id(t_group_id));
		
		
		return "/View/index";
	}
	
	

	
	@RequestMapping("/Details")
	public ModelAndView List(ModelAndView mav) {
		 mav.setViewName("View/Details");
		 mav.addObject("list", detailsService.listDetails());
		 return mav;
	}
	
	
}
