package com.kh.tripism.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	// private BoardServiceImpl bService;
	
	@RequestMapping("list.pn")
	public String selectList() {
		return "travelPartner/partnerList";
	}
	

}
