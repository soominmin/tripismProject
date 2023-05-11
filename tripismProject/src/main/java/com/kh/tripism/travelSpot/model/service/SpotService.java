package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import com.google.gson.JsonObject;
import com.kh.tripism.travelSpot.model.vo.Spot;

public interface SpotService {
	ArrayList<Spot> selectSpotList(int currentPage);

	ArrayList<Spot> selectSpotAPI(JsonObject items);
}
