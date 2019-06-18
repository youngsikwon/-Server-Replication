package com.example.spring03.User.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.example.spring03.User.dto.userDTO;
import com.example.spring03.tracker.dto.trackerDTO;

@Repository
public class userDAOImpl implements userDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(userDAOImpl.class);
	
	//게시판 리스트 뿌리기
	@Override
	public List<userDTO> listUser()throws Exception {
		return sqlSession.selectList("user.userlist");
	}
	//게시판 등록
	@Override
	public void insertUser(userDTO dto)throws Exception {
		sqlSession.insert("user.insert",dto); 
	}
	//상세보기
	@Override
	public userDTO viewUser(String user_id)throws Exception {
		return sqlSession.selectOne("user.viewUser",user_id);
	}
	//상세보기 + 수정
	@Override
	public void updateUser(userDTO dto)throws Exception {
		sqlSession.update("user.updateUser", dto);
	}
	
	@Override//체크박스 삭제
	public int deleteUser(String user_id)throws Exception {
		return sqlSession.delete("user.deleteUser",user_id);
	}

	
	  @Override 
	  public boolean checkPw(String user_id, String user_pw)throws Exception { 
	  boolean  result = false; 
	  Map<String, String> map = new HashMap<String, String>();
	  map.put("user_id", user_id); map.put("user_pw", user_pw); int count =
	  sqlSession.selectOne("user.checkPw", map); //리턴 값이 1이면 true, 0이면 false
	  if(count ==1) 
		 result=true; 
	  return result; 
	  }
	 
	@Override
	public userDTO getUser(userDTO uDTO)throws Exception {
		logger.info("UserDAO.getUser 호출" + uDTO);
		return sqlSession.selectOne("user.checkID",uDTO);
	}
	@Override
	public List<trackerDTO> user_group_choice() throws Exception {
		return sqlSession.selectList("user.user_group_choice");
	}
	
	




}
