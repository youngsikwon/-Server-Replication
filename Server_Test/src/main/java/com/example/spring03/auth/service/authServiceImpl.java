package com.example.spring03.auth.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.spring03.auth.dao.authDAO;
import com.example.spring03.auth.dto.authDTO;

@Service
public class authServiceImpl implements authService {

	@Inject
	authDAO authDao;
	
	/*
	 * @Override public void loginCheck(authDTO dto) {
	 * 
	 * String encode_password = LoginUtil.encryptPassword(dto.getUser_id(),
	 * dto.getUser_pw()); dto.setUser_pw(encode_password);
	 * 
	 * 
	 * }
	 */

	
	 @Override 
	 public String loginCheck(authDTO dto) {
	 
	 return authDao.loginCheck(dto);
	 
	 }
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
