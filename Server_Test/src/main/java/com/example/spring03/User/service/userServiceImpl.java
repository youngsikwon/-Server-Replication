package com.example.spring03.User.service;

import java.util.List;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.example.spring03.User.dao.userDAO;
import com.example.spring03.User.dto.userDTO;
import com.example.spring03.tracker.dto.trackerDTO;

@Service
public class userServiceImpl implements userService {
	
	@Inject
	userDAO userDao;
	
	@Inject
	userService userservice;
	
	
	
	@Override //목록 뿌리기
	public List<userDTO> listUser()throws Exception {
		return userDao.listUser();
	}
	//게시판 상세보기 만들기.
	@Override
	public userDTO viewUser(String user_id)throws Exception {
		return userDao.viewUser(user_id);
	}
	//게시판 등록했습니다.
	@Override
	public void insertUser(userDTO dto)throws Exception {
		userDao.insertUser(dto);
	}
	//상세보기 + 수정
	@Override
	public void updateUser(userDTO dto)throws Exception {
		userDao.updateUser(dto);
	}
	//상세보기 + 삭제
	@Override
	public int deleteUser(String user_id)throws Exception {
		return userDao.deleteUser(user_id);
	}
	// 판별하는 것.
	
	
	//아이디 중복
	  @Override 
	  public boolean checkPw(String user_id, String user_pw)throws Exception { 
		  return 	  userDao.checkPw(user_id, user_pw); 
	  }
	 
	@Override
	public userDTO getUser(userDTO uDTO)throws Exception {
		return userDao.getUser(uDTO);
	}
	@Override
	public List<trackerDTO> user_group_choice() throws Exception {
		return userDao.user_group_choice();
	}
	
	




	



}
