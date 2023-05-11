package com.kh.tripism.notice.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.notice.model.service.NoticeServiceImpl;
import com.kh.tripism.notice.model.vo.Notice;


@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl nService;

	
	@RequestMapping("noticeSelectlist.bo")
	public ModelAndView noticeSelectList(@RequestParam(value="cpage", defaultValue = "1")int currentPage, ModelAndView mv) {
		// System.out.println(currentPage);
		
		int listCount = nService.noticeSelectListCount();
		
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
		mv.addObject("pi", pi).addObject("list", list).setViewName("notice/noticeListView");
		
		return mv;

		
	}
	
	@RequestMapping("noticeDetailView.bo")
	public ModelAndView noticeDetailView(int bno, ModelAndView mv) {
//		int result = nService.increaseCount(bno);
		

			Notice n = nService.selectNotice(bno);
			
			mv.addObject("n", n).setViewName("notice/noticeDetailView");

		
		
		return mv;
	}
	
	@RequestMapping("noticeEnrollForm.bo")
	public String noticeEnrollForm() {
		return "notice/noticeEnrollForm";
	}
	
	@RequestMapping("insertNotice.bo")
	public String insertNotice(Notice n, MultipartFile upfile, HttpSession session, Model model) {
		if(!upfile.getOriginalFilename().equals("")) {
		
			String changeName = saveFile(upfile, session);
			
			n.setOriginName(upfile.getOriginalFilename());
			n.setChangeName("resources/uploadFiles/" + changeName);
			
			
			
		}		
		
		
		int result = nService.insertNotice(n);
		
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			return "redirect:noticeSelectlist.bo";
		}else {
			model.addAttribute("errorMsg", "게시글 등록 실패!");
			return "common/errorPage";
			
		}
		
		
	}

	@RequestMapping("noticeUpdateForm.bo")
	public String noticeUpdateForm() {
		return "notice/noticeUpdateForm";
	}	
	
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile. getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
		
		
	}

}
