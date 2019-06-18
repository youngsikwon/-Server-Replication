package com.example.spring03.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.spring03.details.dto.DetailsDTO;

@RestController
public class GoogleChartAjaxController {

	
		@RequestMapping(value="/chartData.do", method=RequestMethod.POST)
		public List<DetailsDTO> chartData(){
			List<DetailsDTO> lists = new ArrayList<DetailsDTO>();
			String [] itme = {"test1", "test2", "test3", "test4", "test5", "test6"};
			Random ran = new Random();
			for(int i =0; i< 6; i++) {
				 lists.add(new DetailsDTO());
			}
			return lists;
		}
}
