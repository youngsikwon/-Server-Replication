package com.example.spring03.User_controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.controller.userBoardController;
import com.example.spring03.group.service.groupService;

@Controller
@RequestMapping("/User_groupBoard/*")
public class User_GroupController {
	
	@Inject
	groupService groupService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	Logger logger = LoggerFactory.getLogger(userBoardController.class);
	
	@RequestMapping("/Group_Board")
	public ModelAndView List(ModelAndView mav)throws Exception {
		mav.setViewName("/User_groupBoard/Group_Board");
		mav.addObject("list",groupService.User_group());
		logger.info("여기 무엇이 들어갈까?"+ mav);
		return mav;
	}

}
