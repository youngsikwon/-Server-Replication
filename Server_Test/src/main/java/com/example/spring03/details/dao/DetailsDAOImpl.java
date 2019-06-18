package com.example.spring03.details.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.jfree.chart.JFreeChart;
import org.springframework.stereotype.Repository;

import com.example.spring03.details.dto.DetailsDTO;

@Repository
public class DetailsDAOImpl implements DetailsDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<DetailsDTO> listDetails() {
		
		return sqlSession.selectList("details.details_list");
	}

	@Override // 상세보기
	public DetailsDTO view(String t_group_id) {
		
		return sqlSession.selectOne("details.view",t_group_id);
	}

	@Override // 날씨정보
	public DetailsDTO group_weather(String t_group_id) {
		
		return sqlSession.selectOne("details.group_weather", t_group_id);
	}

	@Override // 센서 데이터
	public DetailsDTO sensorDate(String t_group_id) {
		
		return sqlSession.selectOne("details.sensordate", t_group_id);
	}

	@Override // 알람정보
	public DetailsDTO t_alarm(String t_group_id) {
		return sqlSession.selectOne("details.t_alarm", t_group_id);
	}

	

	@Override //인버터 평균
	public DetailsDTO inverter_avg(String t_group_id) {
		
		return sqlSession.selectOne("details.inverter_avg", t_group_id);
	}

	@Override
	public DetailsDTO tracker(String t_group_id) {
		return sqlSession.selectOne("details.tracker",t_group_id);
	}

	@Override // 인버터 구글차트
	public List<DetailsDTO> GoogleChart() {
		return sqlSession.selectOne("details.googleChart");
	}
	
	@Override // 금일, 전일, 현재출력 발전량
	public DetailsDTO inverter_date(String t_group_id) {
		return sqlSession.selectOne("details.inverter_date", t_group_id);
	}
	@Override// 금일, 누적
	public DetailsDTO inverter_today(String t_group_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("details.inverter_today", t_group_id);
	}

	@Override
	public DetailsDTO total_data(String t_group_id) {
		return sqlSession.selectOne("details.total_data", t_group_id);
	}

	@Override
	public DetailsDTO t_group_id(String t_group_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("details.group_id", t_group_id);
	}

	@Override
	public DetailsDTO Cumulative_power_generation(String t_group_id) {
		return sqlSession.selectOne("details.Cumulative_power_generation", t_group_id);
	}
	
	
	
	//////////////////////////////////////////////////////////////////////////////////
	//유저 정보 넣기
	@Override
	public DetailsDTO User_view(String t_group_id) {
		
		return sqlSession.selectOne("details.User_View", t_group_id);
	}
	//일반 사용자 아이디
	@Override
	public DetailsDTO User_Details(String user_id) {
		return sqlSession.selectOne("details.User_Details", user_id);
	}
	//군집 테이블 - 주소
	@Override 
	public DetailsDTO Addr(String t_group_id) {
		return sqlSession.selectOne("details.Addr", t_group_id);
	}
	

}
