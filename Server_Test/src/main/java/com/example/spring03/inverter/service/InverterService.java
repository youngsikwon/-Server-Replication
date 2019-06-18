package com.example.spring03.inverter.service;

import java.util.List;

import com.example.spring03.inverter.dto.inverterDTO;

public interface InverterService {

	public List<inverterDTO> listInverter() throws Exception;

	public inverterDTO viewInsert(String inverter_idx) throws Exception;

	public void updateInverter(inverterDTO dto) throws Exception;

	public int deleteView(int inverter_idx);// 체크박스 삭제

	public void insertInverter(inverterDTO dto) throws Exception;

	public List<inverterDTO> inverter_group_choice() throws Exception;

	public inverterDTO idCheck(String inverter_idx);// 인버터 아이디 찾기

	public inverterDTO group_idCheck(String t_group_id) throws Exception;// 군집 아이디 중복확인
	
	public void deleteInverter(inverterDTO dto) throws Exception;
	
	
	///일반 유조
	 public List<inverterDTO> User_Inverter()throws Exception;
}
