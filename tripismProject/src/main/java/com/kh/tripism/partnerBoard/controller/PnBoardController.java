package com.kh.tripism.partnerBoard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.partnerBoard.model.service.PnBoardServiceImpl;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;

@Controller
public class PnBoardController {
	
	@Autowired
	private PnBoardServiceImpl bService;
	
	
	// 게시글 페이징 + 게시글 목록 조회용
	@RequestMapping("list.pn")
	public ModelAndView selectList(@RequestParam(value = "cpage",defaultValue = "1") int currentPage, ModelAndView mv) {
		// jsp 에서 cPage가 날라오면 int CurrentPage에 셋팅
		// defaultValue=아무것도 하지않으면 1
		// System.out.println("controllerasdsadasdasdasd");
		int listCount = bService.selectListCount();
		System.out.println("리스트조회 결과: " +listCount);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<PnBoard> pnList = bService.selectList(pi);
		System.out.println("pnList:" + pnList );
		
		mv.addObject("pi", pi).addObject("pnlist", pnList).setViewName("travelPartner/partnerList");
		
		return mv;
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
	
	
	

	
	
	// 

	
	
	
	
}





















