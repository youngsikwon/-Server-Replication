package com.example.spring03.auth.service;

import javax.servlet.http.HttpSession;

import com.example.spring03.auth.dto.authDTO;

public interface authService {

	
	public String loginCheck(authDTO dto);
	public void logout(HttpSession session);
}
