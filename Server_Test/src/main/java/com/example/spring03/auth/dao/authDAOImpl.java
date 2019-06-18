package com.example.spring03.auth.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring03.auth.dto.authDTO;


@Repository
public class authDAOImpl  implements authDAO{

	@Inject
	SqlSession sqlSession;

	@Override
	public String loginCheck(authDTO dto) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("auth.login_check", dto);
	}
	


}
