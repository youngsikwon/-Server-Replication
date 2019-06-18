package com.example.spring03.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.group.dto.groupDTO;
import com.example.spring03.group.service.groupService;
import com.example.spring03.inverter.dto.inverterDTO;
import com.example.spring03.tracker.dto.trackerDTO;

@Controller
@RequestMapping("/groupBoard/*")
public class GroupController {
	
	@Inject
	groupService groupService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	Logger logger = LoggerFactory.getLogger(userBoardController.class);
	
	@RequestMapping("/Group_Board")
	public ModelAndView List(ModelAndView mav)throws Exception {
		mav.setViewName("/groupBoard/Group_Board");
		mav.addObject("list",groupService.listGroup());
		logger.info("여기 무엇이 들어갈까?"+ mav);
		return mav;
	}
	//군집 등록 페이지 
	@RequestMapping("/Group_Insert")
	public ModelAndView insert(ModelAndView mav)throws Exception {
		mav.setViewName("groupBoard/Group_Insert");
		mav.addObject("inverter_group_choice", groupService.inverter_group_choice());
		return mav;
	}
	
	//군집 등록
	@RequestMapping("insert")
	public String insert(@ModelAttribute groupDTO dto, HttpSession session, Model model)throws Exception {
		//세션에서 사용자아이디를 가져옴
		groupService.insertGroup(dto);
		return "redirect:/groupBoard/Group_Board";
	}
	
	@RequestMapping("update") // 수정용
	public String update(@ModelAttribute groupDTO dto, Model model)throws Exception {
		 groupService.updateGroup(dto);
		return "redirect:/groupBoard/Group_Board";
	}
	
	//군집 상세페이지
	@RequestMapping("Group_view")
	public String view(@RequestParam String t_group_id, Model modelMap)throws Exception {
		groupDTO groupDto = groupService.groupview(t_group_id);
		modelMap.addAttribute("dto", groupDto);
		return "groupBoard/Group_view";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("t_group_id") int[] t_group_id, Model model, groupDTO dto)throws Exception {
		//삭제할 사용자 ID마다 반복해서 사용자 삭제
		
		
		for(int user : t_group_id) {
			System.out.println("사용자 삭제 = "+ user);
			int delete = groupService.deleteGroup(user);
		}
		return "redirect:/userBoard/User_Board";//목록으로 이동
		}
	
	
	// 회원 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req) throws Exception{
		
		logger.info("post idCheck");
		String t_group_id = req.getParameter("t_group_id");
		 groupDTO idCheck =  groupService.idCheck(t_group_id);
		
		int result = 0;
		
		if(idCheck !=null) {
			logger.info("군집 아이디 실행");
			result =1;
		}
		
		return result;
	}
	// 아이디 중복 체크
		@RequestMapping("/duplicationCheck.do")
		@ResponseBody
		public String CheckDuplication(@RequestBody String t_group_id) {
			
			String checkRst;
			int idCnt = groupService.CheckDuplication(t_group_id);
			if(idCnt > 0) 
				checkRst = "F";
			else 
				checkRst = "S";
			
			return checkRst;
		}


	
	
	
	
}
