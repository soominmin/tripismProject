package com.kh.tripism.travelMap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class travelMapController {
	
	@RequestMapping("mapView.tm")
	public String mapView() {
		return "travelMap/travelMap";
	}
	
}
