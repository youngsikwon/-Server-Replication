package com.example.spring03.tracker.dao;

import java.util.List;
import java.util.Map;

import com.example.spring03.inverter.dto.inverterDTO;
import com.example.spring03.tracker.dto.trackerDTO;

public interface trackerDAO {

	public List<trackerDTO> listTracker() throws Exception;

	public trackerDTO detailTracker(int tracker_idx) throws Exception;

	public void updateTracker(trackerDTO dto) throws Exception; //트래커 수정

	public int deleteTracker(int tracker_idx);

	public void insertTracker(trackerDTO dto) throws Exception;

	public trackerDTO view(String tracker_idx) throws Exception;

	public List<trackerDTO> tracker_group_choice() throws Exception;// 군집명 넣어주기

	public trackerDTO t_tracker(String tracker_idx) throws Exception;// 트래커 아이디 찾기
	
	public List<trackerDTO> Add_Inverter()throws Exception; // 인버터 추가 기능.
	
	 /////////////////////////////////////////일반 유저/////////////////////////////////////
	 public List<inverterDTO> User_tracker()throws Exception;
	
}
