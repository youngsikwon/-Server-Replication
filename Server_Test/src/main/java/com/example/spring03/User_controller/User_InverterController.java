package com.example.spring03.User_controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.inverter.service.InverterService;

@Controller
@RequestMapping("/User_inverterBoard/*")
public class User_InverterController {
	
	
	@Inject
	InverterService inverterService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	Logger logger = LoggerFactory.getLogger(User_InverterController.class);
	
	//인버터 목록 뿌리기
	@RequestMapping("/Inverter_Board")
	public ModelAndView List(ModelAndView mav)throws Exception {
		mav.setViewName("User_inverterBoard/Inverter_Board");
			mav.addObject("list", inverterService.User_Inverter());
		return mav;
	}
}