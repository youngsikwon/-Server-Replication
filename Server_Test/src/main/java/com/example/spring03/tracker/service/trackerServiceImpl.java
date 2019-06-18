package com.example.spring03.tracker.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.example.spring03.inverter.dto.inverterDTO;
import com.example.spring03.tracker.dao.trackerDAO;
import com.example.spring03.tracker.dto.trackerDTO;
import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

@Service
public class trackerServiceImpl implements trackerService {

	@Inject
	trackerDAO trackerDao;
	


	@Override
	public List<trackerDTO> listTracker() throws Exception {
		return trackerDao.listTracker();
	}


	@Override
	public void updateTracker(trackerDTO dto) throws Exception {
		trackerDao.updateTracker(dto);
	}

	

	@Override
	public void insertlistTracker(trackerDTO dto) throws Exception {
		trackerDao.insertTracker(dto);
	}

	@Override
	public trackerDTO view(String tracker_idx) throws Exception {
		return trackerDao.view(tracker_idx);
	}

	@Override //체크박스 삭제하기.
	public int deleteTracker(int tracker_idx){
		return  trackerDao.deleteTracker(tracker_idx);
	}

	@Override
	public List<trackerDTO> tracker_group_choice() throws Exception {
		return trackerDao.tracker_group_choice();
	}

	



	@Override
	public trackerDTO t_tracker(String tracker_idx)throws Exception {
		return trackerDao.t_tracker(tracker_idx);
	}

	@Override
	public List<trackerDTO> Add_Inverter() throws Exception {
		return trackerDao.Add_Inverter();
	}
	//////////일반 유저///////////////////////////////

	@Override
	public List<inverterDTO> User_tracker() throws Exception {
		return trackerDao.User_tracker();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}