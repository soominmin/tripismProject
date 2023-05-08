package com.kh.tripism.partnerBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.tripism.partnerBoard.model.service.PnBoardServiceImpl;

@Controller
public class PnBoardController {
	
	private PnBoardServiceImpl bService;
	
	// 게시글 목록 조회용
	@RequestMapping("list.pn")
	public String selectList() {
		return "travelPartner/partnerList";
	}
	
	// 게시글 상세보기
	@RequestMapping("detail.pn")
	public String detailForm() {
		return "travelPartner/detailForm";
	}

	
	// 게시글 작성 폼
	@RequestMapping("enrollForm.pn")
	public String enrollForm() {
		return "travelPartner/enrollForm";
	}
	
	
	// 게시글 수정폼 (작성예정)
	
}
