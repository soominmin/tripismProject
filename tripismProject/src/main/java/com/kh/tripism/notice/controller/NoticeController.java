package com.kh.tripism.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	
	@RequestMapping("noticeDetailView.bo")
	public String noticeDetailView() {
		return "notice/noticeDetailView";
	}

}
