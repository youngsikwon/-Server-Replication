package com.example.spring03.User.service;

import java.util.List;

import org.json.simple.JSONObject;

import com.example.spring03.User.dto.userDTO;
import com.example.spring03.tracker.dto.trackerDTO;

public interface userService {
	
	public List<userDTO> listUser()throws Exception;
	public userDTO viewUser(String user_id)throws Exception;
	public void updateUser(userDTO dto)throws Exception;
	
	public int deleteUser(String user_id)throws Exception;
	
	public void insertUser(userDTO dto)throws Exception;
	 public boolean checkPw(String user_id, String user_pw)throws Exception; 
	//아이디 중복검사 만듬.
	public userDTO getUser (userDTO uDTO)throws Exception;
	
	public List<trackerDTO> user_group_choice() throws Exception;// 군집리스트 넣어주기
}
 