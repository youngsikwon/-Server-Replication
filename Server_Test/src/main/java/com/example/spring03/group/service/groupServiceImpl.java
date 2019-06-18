package com.example.spring03.group.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.example.spring03.group.dao.groupDAO;
import com.example.spring03.group.dao.groupDAOImpl;
import com.example.spring03.group.dto.groupDTO;
import com.example.spring03.inverter.dto.inverterDTO;

@Service
public class groupServiceImpl implements groupService {
	
	Logger logger = LoggerFactory.getLogger(groupServiceImpl.class);
	
	@Inject
	groupDAO GroupDao;
	
	@Override
	public List<groupDTO> listGroup()throws Exception {
		return GroupDao.listGroup();
	}

	@Override
	public groupDTO detailGroup(int t_group_id)throws Exception {
		return null;
	}

	@Override
	public void updateGroup(groupDTO dto)throws Exception {
	 	GroupDao.updateGroup(dto);
	}

	@Override
	public int deleteGroup(int t_group_id)throws Exception {
		return GroupDao.deleteView(t_group_id);
	}

	

	@Override
	public groupDTO groupview(String t_group_id)throws Exception {
		return GroupDao.groupview(t_group_id);
	}

	@Override
	public void insertGroup(groupDTO dto)throws Exception {
		GroupDao.insertGroup(dto);
	}


	@Override // 아이디 중복
	public groupDTO idCheck(String t_group_id)throws Exception {
		return GroupDao.idCheck(t_group_id);
	}

	@Override
	public List<groupDTO> inverter_group_choice() throws Exception {
		return GroupDao.inverter_group_choice();
	}
	//카운트
	// 아이디 중복 체크
		public int CheckDuplication(String t_group_id) {
			
			int idCnt = GroupDao.CheckDuplication(t_group_id);
			return idCnt;
		}

		@Override
		public List<inverterDTO> User_group() throws Exception {
			return GroupDao.User_group();
		}






	

}
