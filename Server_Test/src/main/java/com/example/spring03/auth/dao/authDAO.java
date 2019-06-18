package com.example.spring03.auth.dao;

import com.example.spring03.auth.dto.authDTO;

public interface authDAO {
	public String loginCheck(authDTO dto);
}