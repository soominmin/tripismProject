package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.kh.tripism.travelSpot.model.dao.SpotDao;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotTour;

@Service
public class SpotServiceImpl implements SpotService {
	@Autowired
	private SpotDao sDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public ArrayList<Spot> selectSpotList(int currentPage) {
		ArrayList<Spot> list = sDao.selectSpotList(sqlSession, currentPage);
		return list;
	}
	
	@Override
	public ArrayList<Spot> selectSpotAPI(JsonObject items) {
		
		return null;
	}
	
	@Override
	public Spot selectSpotDetail(int contentId) {
		
		return sDao.selectSpotDetail(sqlSession, contentId);
		
	}
	

	
}
