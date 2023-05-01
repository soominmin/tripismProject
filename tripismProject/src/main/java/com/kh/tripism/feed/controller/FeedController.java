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
import org.springframework.*;

import com.kh.tripism.feed.model.service.FeedServiceImpl;
import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;

@Controller
public class FeedController {
	
	@Autowired(required = true)
	private FeedServiceImpl fService;

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
	
	@RequestMapping("insert.fd")
	public String insertFeed(Feed f, Img i, MultipartFile upfile, HttpSession session, Model model) {
		if(!upfile.getOriginalFilename().equals("")) {
			
			/*
			String originName = upfile.getOriginalFilename();
			
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			int ranNum = (int)(Math.random()*90000 + 10000);
			
			String ext = originName.substring(originName.lastIndexOf("."));
			
			String changeName = currentTime + ranNum + ext;
			
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
				upfile.transferTo(new File(savePath + changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			*/
			
			String changeName = saveFile(upfile, session);
			
			i.setImgOriginName(upfile.getOriginalFilename());
			i.setImgChangeName("resources/uploadFiles/" + changeName);
			
		}
		int result = fService.insertFeed(f);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 피드가 등록되었음을 알립니다.");
			return "redirect:feed.fd";
		} else {
			model.addAttribute("errorMsg", "피드 등록이 실패했음을 알립니다.");
			return "common/404";
		}
		
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()*90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
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
			if(i.getImgOriginName() != null) {
				new File(session.getServletContext().getRealPath(i.getImgChangeName())).delete();
			}
			String changeName = saveFile(reupfile, session);
			
			i.setImgOriginName(reupfile.getOriginalFilename());
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