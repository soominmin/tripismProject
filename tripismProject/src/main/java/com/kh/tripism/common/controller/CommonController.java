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

}
