package com.example.spring03.group.dao;

import java.util.List;

import com.example.spring03.group.dto.groupDTO;
import com.example.spring03.inverter.dto.inverterDTO;


public interface groupDAO {
	
	 public List<groupDTO> listGroup()throws Exception;//군집 목록
	 public groupDTO detailGroup(int t_group_id)throws Exception;//군집 뷰~
	 
	 public void updateGroup(groupDTO dto)throws Exception;//군집 수정.
	 
	 public int deleteView(int t_group_id)throws Exception;//군집 삭제
	 
	 public void insertGroup(groupDTO dto)throws Exception; //군집 등록
	 
	 public groupDTO groupview(String t_group_id)throws Exception; // 군집 상세보기
	 
	 public List<groupDTO> inverter_group_choice() throws Exception;//군집명 넣어주기
	 
	 public groupDTO idCheck(String t_group_id)throws Exception; // 군집 아이디 중복
	 
	 public int CheckDuplication(String t_group_id);
	 
	 /////////////////////////////////////////일반 유저/////////////////////////////////////
	 public List<inverterDTO> User_group()throws Exception;
	 
	 
	 
	 
	 
	 
	 
	
}
