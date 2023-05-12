package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import com.google.gson.JsonObject;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotTour;

public interface SpotService {
	ArrayList<Spot> selectSpotList(int currentPage);

	ArrayList<Spot> selectSpotAPI(JsonObject items);

	Spot selectSpotDetail(int contentId);
	
	
}
