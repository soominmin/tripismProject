package com.kh.tripism.feed.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.*;

import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.feed.model.service.FeedServiceImpl;
import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;
import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.member.model.vo.Member;

import lombok.AllArgsConstructor;

@Controller
public class FeedController {
	
	@Autowired(required = true)
	private FeedServiceImpl fService;

	@RequestMapping("feed.fd")
	public ModelAndView feedMain(Integer currentPage, ModelAndView mv) {
		
		// 전체 피드 조회
			
			System.out.println("피드 나왔나?");
			
			currentPage = 1;
			
			int listCount = fService.selectListCount();
			 
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Feed> feed = fService.selectFeedList(pi);
			ArrayList<Member> member = fService.selectMember(pi);
			ArrayList<Img> img = fService.selectImg(pi);
				
			
			mv.addObject("pi", pi).addObject("feed", feed).addObject("member", member).addObject("img", img).setViewName("feed/feedMain");
			
			return mv;
		
		
		// return "feed/feedMain";
	}
	
	
	@RequestMapping("feedImgAll.fd")
	public String feedImgAll() {
		return "feed/feedImgAll";
	}
	
	@RequestMapping("enrollForm.fd")
	public String enrollForm() {
		return "feed/feedEnrollForm";
	}
	
	@RequestMapping("updateForm.fd")
	public String updateForm() {
		return "feed/feedUpdateForm";
	}
	
	
	
	
	
	@RequestMapping("insert.fd")
	public String insertFeed(Feed f, MultipartFile upFile, HttpSession session, Model model) {
		System.out.println("피드전체 : " + f);
		System.out.println("제목 : " + f.getFeedTitle());
		System.out.println("본문 : " + f.getFeedContents());
		System.out.println("첨부파일 : " + upFile.getOriginalFilename());
		
		
		if(!upFile.getOriginalFilename().equals("")) { // 첨부를 했다.
			
			
			String changeName = saveFile(upFile, session);
			System.out.println("바뀐이름 : " + changeName);
			
			// f => field에 담는작업
			f.setOriginalName(upFile.getOriginalFilename());
			f.setChangeName("resources/uploadFiles/" + changeName);
			
			
		}
		
		
		System.out.println("컨트롤러 탔나?");
		//System.out.println("이미지 : " + i);
		
		int result = fService.insertFeed(f); // 제목/본문 넣을 곳
		int result2 = fService.insertFeed2(f); // 이미지 넣을 곳 
				
		if(result > 0) {
			return "redirect:feed.fd";
		} else {
			return "redirect:feed.fd";
		}
		
	}
	
	public String saveFile(MultipartFile upFile, HttpSession session) {
		
		String originName = upFile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()*90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upFile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	@RequestMapping("delete.fd")
	public String deleteFeed(int feedNo, HttpSession session, String filePath, Model model) {
		
		int result = fService.deleteFeed(feedNo);
		
		if(result > 0) {
			if(!filePath.equals("")) {
				new File(session.getServletContext().getRealPath(filePath)).delete();
			}
			
			session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다");
			return "redirect:feed.fd"; // 수정예정
		} else {
			model.addAttribute("errorMsg", "피드 삭제 실패");
			return "common/errorPage"; // 수정예정
		}
	}
	
	@RequestMapping("update.fd")
	public String updateFeed(Feed f, Img i, MultipartFile reupfile, HttpSession session, Model model) {
		if(!reupfile.getOriginalFilename().equals("")) {
			if(i.getImgOriginalName() != null) {
				new File(session.getServletContext().getRealPath(i.getImgChangeName())).delete();
			}
			String changeName = saveFile(reupfile, session);
			
			i.setImgOriginalName(reupfile.getOriginalFilename());
			i.setImgChangeName("resources/upfiles/" + changeName);
		}
		
		int result = fService.updateFeed(f);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 피드가 수정되었습니다.");
			return "redirect:feed.fd"; // 수정예정
		} else {
			model.addAttribute("errorMsg", "피드 수정 실패");
			return "common/errorPage"; // 수정예정
		}
	}
	
	
}