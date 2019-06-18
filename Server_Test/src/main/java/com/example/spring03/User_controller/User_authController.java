package com.example.spring03.User_controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring03.auth.dto.authDTO;
import com.example.spring03.auth.service.authService;
import com.example.spring03.controller.auchController;

@Controller
@RequestMapping("/User_auth")
public class User_authController {

	Logger logger = LoggerFactory.getLogger(auchController.class);
	
	@Inject
	authService authService;
	
	@RequestMapping("user_Login")
	public String user_Login() {
		
		return "/User_auth/user_Login";
	}
	
	
	@RequestMapping("user_login_check")
	public ModelAndView login_check(@ModelAttribute authDTO dto,
			HttpSession session, ModelAndView mav) {
		int reulst;
		String name = authService.loginCheck(dto); // 로그인 체크
		Map<String, Object> map = new HashMap<String, Object>();
		
		if(name !=null) { // 로그인 성공 => 세션 변수 저장
			//관리자용 세션변수
			session.setAttribute("user_id", dto.getUser_id());
			session.setAttribute("user_pw", dto.getUser_pw());
			session.setAttribute("user_name", name);
			//일반 사사용자 세션 변수
			mav.setViewName("redirect:/User_View/User_index?t_group_id="+ dto.getT_group_id()); 
		}else {
			mav.setViewName("/User_auth/user_Login");
			mav.addObject("message","error");
		}
		return mav;
	}
	
	@RequestMapping("logout")
	public String admin_logout(HttpSession session) {
	session.invalidate();//세션 초기화
	return "redirect:/User_auth/user_Login";
	}


	
}
