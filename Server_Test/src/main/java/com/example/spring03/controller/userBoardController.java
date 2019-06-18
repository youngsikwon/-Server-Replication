package com.example.spring03.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.User.dto.userDTO;
import com.example.spring03.User.service.userService;

@Controller
@RequestMapping("/userBoard/*")
public class userBoardController {
	
	@Inject
	userService userservice;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	Logger logger = LoggerFactory.getLogger(userBoardController.class);
	
	//등록 페이지
	@RequestMapping("/User_Insert")
	public ModelAndView userinsert(ModelAndView mav)throws Exception {
		mav.setViewName("/userBoard/User_Insert");
		mav.addObject("user_group_choice",  userservice.user_group_choice());
		
		return mav;
	}
	//회원목록
	@RequestMapping("/User_Board")
	public ModelAndView user(ModelAndView mav)throws Exception {
		String result = null;
		if(result == null) {
			
		}
		mav.setViewName("/userBoard/User_Board");
		mav.addObject("list", userservice.listUser());
		return mav;
	}
	//사용자 등록
	@RequestMapping("/userinsert")
	public String insert(@ModelAttribute userDTO dto)throws Exception {
		userservice.insertUser(dto);
		return "redirect:/userBoard/User_Board";
	}
	//상세보기 수정
	@RequestMapping("/User_view")
	public String view(@RequestParam String user_id, Model model)throws Exception {
		model.addAttribute("dto", userservice.viewUser(user_id));
		return "userBoard/User_view";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute userDTO dto, Model model)throws Exception {
		boolean result = userservice.checkPw(dto.getUser_id(), dto.getUser_pw());
		logger.info("비밀번화 확인 :"+ result);
		userservice.updateUser(dto);
		return "redirect:/userBoard/User_Board";//목록으로 이동
		/*
		 * if(result) {//비밀번호가 맞으면 }else { userDTO dto2 =
		 * userservice.viewUser(dto.getUser_id());
		 * dto.setUser_reg_date(dto2.getUser_reg_date());//날짜가 지워지지 않도록;
		 * model.addAttribute("dto", dto); model.addAttribute("message",
		 * "비밀번호가 일치하지 않습니다"); return "userBoard/User_view";//수정 페이지로 되돌아가자. }
		 */
	}
	@RequestMapping("/delete")
	public String delete(@RequestParam("user_id") String[] user_id, Model model)throws Exception {
		//삭제할 사용자 ID마다 반복해서 사용자 삭제
		for(String user : user_id) {
			System.out.println("사용자 삭제 = "+ user);
			int delete = userservice.deleteUser(user);
		}
		return "redirect:/userBoard/User_Board";//목록으로 이동
		}
	
	
	/*
	 * 아이디
	 */
	@ResponseBody
	@RequestMapping(value="checkId.do")
	public int idCheck(userDTO uDTO, ModelAndView mav)throws Exception {
		logger.info("Id중복 체크 확인");
		int result =0;
		userDTO user= userservice.getUser(uDTO);
		if(user !=null) {
			result =1;
		}else 
		logger.info("아이디 사용가능 합니다." + result);
		return result;
		
	}

	} //끝
	
