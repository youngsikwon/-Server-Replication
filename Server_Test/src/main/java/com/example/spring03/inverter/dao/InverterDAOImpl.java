package com.example.spring03.inverter.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring03.inverter.dto.inverterDTO;

@Repository
public class InverterDAOImpl implements InverterDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override//리스트
	public List<inverterDTO> listInverter()throws Exception {
		return sqlSession.selectList("inverter.inverterList");
	}
	@Override//등록
	public void insertInverter(inverterDTO dto)throws Exception {
		sqlSession.insert("inverter.inverter_insert", dto);
	}

	@Override//상세보기
	public inverterDTO viewInsert(String inverter_idx)throws Exception {
		return sqlSession.selectOne("inverter.viewInverter", inverter_idx);
	}

	@Override // 수정
	public void updateInverter(inverterDTO dto)throws Exception {
		sqlSession.update("inverter.update", dto);
	}

	@Override
	public int deleteView(int inverter_idx)  {
		return sqlSession.delete("inverter.delete", inverter_idx);
	}
	@Override
	public List<inverterDTO> inverter_group_choice() throws Exception {
		return sqlSession.selectList("inverter.inverter_group_choice");
	}
		@Override
	public inverterDTO idCheck(String inverter_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("inverter.inverter_Check", inverter_idx);
	}
	@Override
	public void deeleteInverter(inverterDTO dto) throws Exception {
		sqlSession.delete("inverter.deleteInverter",dto);
	}
	@Override
	public inverterDTO group_idCheck(String t_group_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	/////////////////일반 유저///////////////////////////
	@Override
	public List<inverterDTO> User_Inverter() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("inverter.User_inverter");
	}




}
