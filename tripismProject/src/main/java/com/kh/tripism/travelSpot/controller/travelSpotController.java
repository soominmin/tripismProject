package com.kh.tripism.travelSpot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class travelSpotController {
	
	@RequestMapping("list.sp")
	public String selectList() {
		return "travelSpot/travelSpotListView";
	}
	
	@RequestMapping("detail.sp")
	public String selectBoard() {
		return "travelSpot/travelSpotDetailView";
	}

}
