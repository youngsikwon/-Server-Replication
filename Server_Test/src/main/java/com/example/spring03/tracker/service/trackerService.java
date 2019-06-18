package com.example.spring03.tracker.service;

import java.util.List;
import java.util.Map;

import com.example.spring03.inverter.dto.inverterDTO;
import com.example.spring03.tracker.dto.trackerDTO;

public interface trackerService {

	public List<trackerDTO> listTracker()throws Exception;// 게시판 목록
	
	
	
	public void updateTracker(trackerDTO dto)throws Exception;
	

	public void insertlistTracker(trackerDTO dto)throws Exception;
	
	public trackerDTO view(String tracker_idx)throws Exception;
	
	public int deleteTracker(int tracker_idx) ;
	
	public List<trackerDTO> tracker_group_choice() throws Exception;
	
	
	public trackerDTO t_tracker(String tracker_idx) throws Exception;// 트래커 아이디 찾기
	
	public List<trackerDTO> Add_Inverter()throws Exception; // 인버터 추가 기능.
	
	////////////일반 유저
	 public List<inverterDTO> User_tracker()throws Exception;
	
	
}
