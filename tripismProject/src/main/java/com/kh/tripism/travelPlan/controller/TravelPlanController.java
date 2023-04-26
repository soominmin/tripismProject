package com.kh.tripism.travelPlan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TravelPlanController {
	
	@RequestMapping("plan.tr")
	public String planEnrollForm() {
		
		return "travelPlan/planEnrollForm";
	}

}
