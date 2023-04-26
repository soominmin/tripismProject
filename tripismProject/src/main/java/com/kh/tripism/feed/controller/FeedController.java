package com.kh.tripism.feed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FeedController {

	@RequestMapping("feed.fd")
	public String feedMain() {
		return "feed/feedMain";
	}
	
	@RequestMapping("enrollForm.fd")
	public String enrollForm() {
		return "feed/feedEnrollForm";
	}
	
	@RequestMapping("updateForm.fd")
	public String updateForm() {
		return "feed/feedUpdateForm";
	}
	
	@RequestMapping("feedBest.fd")
	public String feedBest() {
		return "feed/feedBest";
	}
	
}
