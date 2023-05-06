package com.kh.tripism.travelSpot.model.service;

import java.util.ArrayList;

import com.kh.tripism.travelSpot.model.vo.Spot;

public interface SpotService {
	ArrayList<Spot> selectSpotList(int currentPage);
}
