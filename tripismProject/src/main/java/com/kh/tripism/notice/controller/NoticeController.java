package com.kh.tripism.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.common.model.vo.PageInfo;
import com.kh.tripism.notice.model.service.NoticeServiceImpl;
import com.kh.tripism.notice.model.vo.Notice;
import com.kh.tripism.notice.template.Pagination;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl nService;
	
	@RequestMapping("noticeList.bo")
	public ModelAndView selectList(@RequestParam(value="cpage", defaultValue = "1")int currentPage, ModelAndView mv) {
		// System.out.println(currentPage);
		
		int listCount = nService.selectListCount();
		
		// System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		// System.out.println(pi);
		
		ArrayList<Notice> list = nService.selectList(pi);
		/*
		mv.addObject("pi", pi);
		mv.addObject("list", list);
		mv.setViewName("board/boardListView");
		 */
		
		// 메소드 체이닝
		mv.addObject("pi", pi).addObject("list", list).setViewName("notice/noticeList");
		
		return mv;

		
	}
	
	@RequestMapping("noticeDetailView.bo")
	public String noticeDetailView() {
		return "notice/noticeDetailView";
	}
	
	@RequestMapping("noticeEnrollForm.bo")
	public String noticeEnrollForm() {
		return "notice/noticeEnrollForm";
	}	

	@RequestMapping("noticeUpdateForm.bo")
	public String noticeUpdateForm() {
		return "notice/noticeUpdateForm";
	}	

}
