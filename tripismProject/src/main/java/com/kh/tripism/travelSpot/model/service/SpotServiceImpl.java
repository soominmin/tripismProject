package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.partnerBoard.model.dao.PnBoardDao;
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
	public ArrayList<Spot> selectSpotList(int currentPage, String sortVal) {
		ArrayList<Spot> list = sDao.selectSpotList(sqlSession, currentPage, sortVal);
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
	
	@Override
	public int insertReply(Reply r) {
		return sDao.insertReply(sqlSession, r);
	}
	
	@Override
	public ArrayList<Reply> selectReplyList(int boardNo) {
		return sDao.selectReplyList(sqlSession, boardNo);
	}
	
	@Override
	public int increaseCount(int contentId) {
		return sDao.increaseCount(sqlSession, contentId);
	}
	
	@Override
	public ArrayList<Spot> searchSpotList(int currentPage, int spotContentType, int areaCategoryNo, int detail, String sortVal) {
		ArrayList<Spot> list = sDao.searchSpotList(sqlSession, currentPage, spotContentType, areaCategoryNo, detail, sortVal);
		return list;
	}
	
	@Override
	public int increaseLike(int contentId, int spotNo, int memNo) {
		return sDao.increaseLike(sqlSession, contentId, spotNo, memNo);
	}

	@Override
	public ArrayList<Spot> selectSpotList(int currentPage) {
		ArrayList<Spot> list = sDao.selectSpotList(sqlSession, currentPage, null);
		return list;
	}

	@Override
	public ArrayList<Spot> searchSpotList(int currentPage, int spotContentType, int areaCategoryNo, int detail) {
		ArrayList<Spot> list = sDao.searchSpotList(sqlSession, currentPage, spotContentType, areaCategoryNo, detail, null);
		return list;
	}





	

	
}
