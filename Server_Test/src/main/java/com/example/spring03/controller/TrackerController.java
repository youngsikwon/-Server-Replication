package com.example.spring03.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.example.spring03.tracker.dto.trackerDTO;
import com.example.spring03.tracker.service.trackerService;

@Controller
@RequestMapping("trackerBoard")
public class TrackerController {
	
	private static final Logger logger = LoggerFactory.getLogger(TrackerController.class);
	
	@Inject
	trackerService trackerService;
	
	@Inject 
	SessionLocaleResolver localeResolver; 
	@Inject 
	MessageSource messageSource;
	
	@RequestMapping("Tracker_Board")
	public ModelAndView List(ModelAndView mav)throws Exception {
		mav.setViewName("/trackerBoard/Tracker_Board");
		mav.addObject("list", trackerService.listTracker());
		return mav;
	}
	//트래커 등록 페이지입니다.
	@RequestMapping("Tracker_Insert")
	public ModelAndView insert(ModelAndView mav) throws Exception {
		mav.setViewName("trackerBoard/Tracker_Insert");
		mav.addObject("tracker_group_choice",  trackerService.tracker_group_choice());

		return mav;
	}
	//군집 등록
		@RequestMapping("insert")
		public String insert(@ModelAttribute trackerDTO dto) throws Exception {
			//세션에서 사용자아이디를 가져옴
			trackerService.insertlistTracker(dto);
			return "redirect:/trackerBoard/Tracker_Board";
		}
	//상세보기
	@RequestMapping("Tracker_view")
	public String view(@RequestParam String tracker_idx, Model model) throws Exception{
		model.addAttribute("dto", trackerService.view(tracker_idx));
		return "/trackerBoard/Tracker_view";
	}
	///////////////////////////////////////////////////////////////////////////////////
	//체크박스 삭제
	@RequestMapping("/delete")
	public String delete(@RequestParam("tracker_idx") int[] tracker_idx, Model model) {
		//삭제할 사용자 ID마다 반복해서 사용자 삭제
		for(int user : tracker_idx) {
			System.out.println("사용자 삭제 = "+ user);
			int delete =  trackerService.deleteTracker(user);
		}
		return "redirect:/trackerBoard/Tracker_Board";//목록으로 이동
		}
	
	@RequestMapping(value="update")
	public String update(@ModelAttribute("trackerDTO") trackerDTO dto, Model model)throws Exception {
		trackerService.updateTracker(dto);
		return "redirect:/trackerBoard/Tracker_Board";
	}
	
	
	//군집 확인
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int postIdCheck(HttpServletRequest req) throws Exception{
		logger.info("tracker_idCheck");
		String tracker_idx = req.getParameter("tracker_idx");
		trackerDTO idCheck = trackerService.t_tracker(tracker_idx);
		
		int result = 0;
		
		if(idCheck !=null) {
			result =1;
		}
		return result;
	}
}
