package com.kh.tripism.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping("emailInquiry.me")
	public String enrollForm() {
		// WEB-INF/views/		member/enrollForm				.jsp
		
		return "admin/emailInquiry";
	}
	
}
