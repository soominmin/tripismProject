package com.kh.tripism.feed.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;

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