package com.kh.tripism.feed.controller;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.feed.model.service.FeedServiceImpl;
import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;

@Controller
public class FeedController {
	
	@Autowired(required = true)
	private FeedServiceImpl fService;

	@RequestMapping("feed.fd")
	public ModelAndView feedMain(ModelAndView mv) {
		
		// 전체 피드 조회
			
			System.out.println("피드 나왔나?");
			
			int currentPage = 1;
			
			int listCount = fService.selectListCount();
			 
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
			
			ArrayList<Feed> feed = fService.selectFeedList(pi);
			
			mv.addObject("pi", pi).addObject("feed", feed).setViewName("feed/feedMain");
			System.out.println(feed + "이게 안나오는건가?");
			return mv;
	}
	
	@RequestMapping("feedImgAll.fd")
	public ModelAndView feedImgAll(ModelAndView mv) {
		
		System.out.println("이미지 탔나?");
		
		int currentPage = 1;
		
		int listCount = fService.selectImgCount();
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 1, 1);
		
		ArrayList<Feed> feed = fService.selectImgList(pi);
		
		mv.addObject("pi", pi).addObject("feed", feed).setViewName("feed/feedImgAll");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.fd")
	public String enrollForm() {
		return "feed/feedEnrollForm";
	}
	
	@RequestMapping("insert.fd")
	public String insertFeed(Feed f, MultipartFile upFile1, MultipartFile upFile2, MultipartFile upFile3, MultipartFile upFile4, HttpSession session, Model model) {
		System.out.println("피드전체 : " + f);
		System.out.println("제목 : " + f.getFeedTitle());
		System.out.println("본문 : " + f.getFeedContents());
		
		if(!upFile1.getOriginalFilename().equals("")) { // 첨부를 했다.
			
			String changeName1 = saveFile1(upFile1, session);
			
			// f => field에 담는작업
			
			f.setImgOriginalName1(upFile1.getOriginalFilename());
			f.setImgChangeName1("resources/uploadFiles/" + changeName1);
		}
		
		if(!upFile2.getOriginalFilename().equals("")) { // 첨부를 했다.
			
			String changeName2 = saveFile2(upFile2, session);
			
			// f => field에 담는작업
			
			f.setImgOriginalName2(upFile2.getOriginalFilename());
			f.setImgChangeName2("resources/uploadFiles/" + changeName2);
			
		}
		
		if(!upFile3.getOriginalFilename().equals("")) { // 첨부를 했다.
			
			String changeName3 = saveFile3(upFile3, session);
			
			// f => field에 담는작업
			
			f.setImgOriginalName3(upFile3.getOriginalFilename());
			f.setImgChangeName3("resources/uploadFiles/" + changeName3);
			
		}
		
		if(!upFile4.getOriginalFilename().equals("")) { // 첨부를 했다.
			
			String changeName4 = saveFile4(upFile4, session);
			
			// f => field에 담는작업
			
			f.setImgOriginalName4(upFile2.getOriginalFilename());
			f.setImgChangeName4("resources/uploadFiles/" + changeName4);
			
		}
		
		
		System.out.println("컨트롤러 탔나?");
		//System.out.println("이미지 : " + i);
		
		int result = fService.insertFeed(f); // 제목/본문 넣을 곳
		int result2 = fService.insertFeed2(f); // 이미지 넣을 곳 
		
		System.out.println("사진 변환이름1 : " + f.getImgChangeName1());
		System.out.println("사진 변환이름2 : " + f.getImgChangeName2());
		System.out.println("사진 변환이름3 : " + f.getImgChangeName3());
		System.out.println("사진 변환이름4 : " + f.getImgChangeName4());
				
		if(result > 0) {
			return "redirect:feed.fd";
		} else {
			return "redirect:feed.fd";
		}
		
	}
	
	public String saveFile1(MultipartFile upFile1, HttpSession session) {
		
		String originName = upFile1.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()*90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName1 = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upFile1.transferTo(new File(savePath + changeName1));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName1;
	}
	
	public String saveFile2(MultipartFile upFile2, HttpSession session) {
			
			String originName = upFile2.getOriginalFilename();
			
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			int ranNum = (int)(Math.random()*90000 + 10000);
			
			String ext = originName.substring(originName.lastIndexOf("."));
			
			String changeName2 = currentTime + ranNum + ext;
			
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
				upFile2.transferTo(new File(savePath + changeName2));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return changeName2;
		}
	
	public String saveFile3(MultipartFile upFile3, HttpSession session) {
		
		String originName = upFile3.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()*90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName3 = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upFile3.transferTo(new File(savePath + changeName3));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName3;
	}
	
	
	public String saveFile4(MultipartFile upFile4, HttpSession session) {
			
			String originName = upFile4.getOriginalFilename();
			
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			
			int ranNum = (int)(Math.random()*90000 + 10000);
			
			String ext = originName.substring(originName.lastIndexOf("."));
			
			String changeName4 = currentTime + ranNum + ext;
			
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
			try {
				upFile4.transferTo(new File(savePath + changeName4));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return changeName4;
		}
	
	
	@RequestMapping("updateForm.fd")
	public String updateForm(int fno, Model model) {
		model.addAttribute("f", fService.selectFeed(fno));
		System.out.println("업데이트 탔나? 컨트롤");
		return "feed/feedUpdateForm";
	}
	
	
	@RequestMapping("delete.fd")
	public String deleteFeed(int feedNo, HttpSession session, String filePath, Model model) {
		
		int result = fService.deleteFeed(feedNo);
		
		if(result > 0) {
			System.out.println("filePath : " +  filePath);
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
	
	@RequestMapping("update.fd") // 구현중 0515
	public String updateFeed(Feed f, MultipartFile reupfile1, MultipartFile reupfile2, MultipartFile reupfile3, MultipartFile reupfile4, HttpSession session, Model model) {
		if(!reupfile1.getOriginalFilename().equals("")) {
			if(f.getImgOriginalName1() != null) {
				new File(session.getServletContext().getRealPath(f.getImgChangeName1())).delete();
			}
			String changeName1 = saveFile1(reupfile1, session);
			String changeName2 = saveFile2(reupfile2, session);
			String changeName3 = saveFile3(reupfile3, session);
			String changeName4 = saveFile4(reupfile4, session);
			
			f.setImgOriginalName1(reupfile1.getOriginalFilename());
			f.setImgChangeName1("resources/upfiles/" + changeName1);
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