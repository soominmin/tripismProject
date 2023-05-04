package com.kh.tripism.travelPlan.model.service;

import java.util.ArrayList;

import com.google.gson.JsonObject;
import com.kh.tripism.travelPlan.model.vo.Tour;

public interface PlanService {
	
	int insertTour(JsonObject items);
	ArrayList<Tour> selectTourList(int areaCode,int currentPage,String searchValue);

}
