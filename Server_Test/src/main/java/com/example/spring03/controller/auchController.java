package com.example.spring03.controller;

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

@Controller
@RequestMapping("/auth/*")
public class auchController {

	
	Logger logger = LoggerFactory.getLogger(auchController.class);
		
	@Inject
	authService authService;
	
	@RequestMapping("admin_Login")
	public String login() {
		
		return "/auth/admin_Login";
	}
	
	@RequestMapping("admin_login_check")
	public ModelAndView admin_login_check(@ModelAttribute authDTO dto,
			HttpSession session, ModelAndView mav) {
		int reulst;
		String name = authService.loginCheck(dto); // 로그인 체크
		if(name !=null) { // 로그인 성공 => 세션 변수 저장
			//관리자용 세션변수
			session.setAttribute("user_id", dto.getUser_id());
			session.setAttribute("user_pw", dto.getUser_pw());
			session.setAttribute("user_name", name);
			//일반 사사용자 세션 변수
			mav.setViewName("redirect:/View/Details");
		}else {
			mav.setViewName("/auth/admin_Login");
			mav.addObject("message","error");
		}
		//로그인 성공 => 이름이 넘어옴, 실패 => null이 넘어옴
		/*
		 * String name = authService.loginCheck(dto, session);
		 * logger.info("user_name :"+ name); if(name !=null) {//로그인 성공하면 시작 페이지로 이동
		 * mav.setViewName("redirect:http://localhost:8080/spring03/View/Details");
		 * }else {//실패하면 login 페이지로 다시 돌아감. mav.setViewName("auth/login1");
		 * mav.addObject("message","error"); }
		 */
		return mav;
	}
	
	
	@RequestMapping("logout")
	public String admin_logout(HttpSession session) {
	session.invalidate();//세션 초기화
	return "redirect:/auth/admin_Login";
		/*
		 * authService.logout(session); mav.setViewName("auth/login1");
		 * mav.addObject("message","logout"); return mav;
		 */
	}


	
}