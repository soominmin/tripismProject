package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import com.google.gson.JsonObject;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotTour;

public interface SpotService {
	ArrayList<Spot> selectSpotList(int currentPage);

	ArrayList<Spot> selectSpotAPI(JsonObject items);

	Spot selectSpotDetail(int contentId);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(int boardNo);

	int increaseCount(int contentId);


	ArrayList<Spot> searchSpotList(int currentPage, int spotContentType, int areaCategoryNo, int detail);

	ArrayList<Spot> selectSpotList(int currentPage, String sortVal);

	ArrayList<Spot> searchSpotList(int currentPage, int spotContentType, int areaCategoryNo, int detail,
			String sortVal);

	int increaseLike(int contentId, int spotNo, int memNo);

	
	
}
