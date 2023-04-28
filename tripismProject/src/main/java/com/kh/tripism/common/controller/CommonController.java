package com.kh.tripism.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	@RequestMapping("index.pg")
	public String index() {
		return "common/main";
	}
	
	@RequestMapping("emailInquiry.pg")
	public String emailInquiry() {
		return "admin/emailInquiry";
	}
	
	@RequestMapping("adminMemberList.pg")
	public String adminMemberList() {
		return "admin/adminMemberList";
	}
	
	@RequestMapping("adminNoticeBoardList.pg")
	public String adminNoticeBoardList() {
		return "admin/adminNoticeBoardList";
	}
	
	@RequestMapping("adminPartnerBoardList.pg")
	public String adminPartnerBoardList() {
		return "admin/adminPartnerBoardList";
	}
	
	@RequestMapping("adminTravelBoardList.pg")
	public String adminTravelBoardList() {
		return "admin/adminTravelBoardList";
	}
	
	@RequestMapping("adminTravelPackageBoardList.pg")
	public String adminTravelPackageBoardList() {
		return "admin/adminTravelPackageBoardList";
	}

}
