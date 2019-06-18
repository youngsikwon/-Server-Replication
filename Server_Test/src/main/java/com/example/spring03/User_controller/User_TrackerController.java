package com.example.spring03.User_controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.tracker.service.trackerService;

@Controller
@RequestMapping("/User_trackerBoard/*")
public class User_TrackerController {
	
	private static final Logger logger = LoggerFactory.getLogger(User_TrackerController.class);
	
	@Inject
	trackerService trackerService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	@RequestMapping("Tracker_Board")
	public ModelAndView List(ModelAndView mav)throws Exception {
		mav.setViewName("/User_trackerBoard/Tracker_Board");
		mav.addObject("list", trackerService.User_tracker());
		return mav;
	}
}
