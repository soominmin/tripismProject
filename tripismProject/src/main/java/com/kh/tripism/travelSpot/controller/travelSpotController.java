package com.kh.tripism.travelSpot.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.tripism.travelSpot.model.service.SpotServiceImpl;
import com.kh.tripism.travelSpot.model.vo.Spot;

@Controller
public class travelSpotController {
	
	@Autowired
	private SpotServiceImpl sService;
	
	@RequestMapping("list.sp")
	public String selectList() {
		return "travelSpot/travelSpotListView";
	}
	
	@RequestMapping("detail.sp")
	public String selectBoard() {
		return "travelSpot/travelSpotDetailView";
	}
	
	@ResponseBody
	@RequestMapping(value="spotList.sp", produces = "application/json; charset=utf-8")
	public String selectSpotList(int currentPage) {
		
		System.out.println("ddddd");
		
		ArrayList<Spot> list = sService.selectSpotList(currentPage);
		
		return new Gson().toJson(list);
		
	}

}
