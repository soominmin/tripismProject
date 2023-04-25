package com.kh.tripism.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	

	@RequestMapping("idfind.do")
	public String EnrollMemberForm() {
		return "member/idFind";
	}

	
}
