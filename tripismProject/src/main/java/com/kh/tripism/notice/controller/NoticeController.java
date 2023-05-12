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
import com.kh.tripism.common.vo.PageInfo;
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

	@RequestMapping("updateForm.bo")
	public String noticeUpdateForm(int bno, Model model) {
	      model.addAttribute("n", nService.selectNotice(bno));
	      
	      return "notice/noticeUpdateForm";
	}
	
	   @RequestMapping("update.bo")
	   public String updateBoard(Notice n, MultipartFile reupfile, HttpSession session, Model model) {
	      // 새로 넘어온 첨부파일이 있을 경우
	      if(!reupfile.getOriginalFilename().equals("")) {
	         // 기존에 첨부파일이 있었을 경우 => 기존의 첨부파일 지우기
	         if(n.getOriginName() != null) {
	            new File(session.getServletContext().getRealPath(n.getChangeName())).delete();
	         }
	         
	         // 새로 넘어온 첨부파일 서버 업로드 시키기
	         String changeName = saveFile(reupfile, session);
	         
	         // b에 새로 넘어온 첨부파일에 대한 원본명, 저장 경로 담기
	         n.setOriginName(reupfile.getOriginalFilename());
	         n.setChangeName("resources/uploadFiles/" + changeName);
	      }
	      
	      /*
	       * b에 boardNo, boardTitle, boardContent 무조건 담겨있음
	       * 
	       * 1. 새로 첨부된 파일X, 기존 첨부파일도 없었을 경우X
	       *       => originName: null, changeName: null
	       * 
	       * 2. 새로 첨부된 파일 x, 기존 첨부 파일 o
	       *       => originName: 기존 첨부파일 원본명, changeName: 기존 첨부파일 저장 경로
	       * 
	       * 3. 새로 첨부된 파일 o, 기존 첨부 파일 x
	       *     => originName: 새로운 첨부파일 원본명, changeName: 새로운 첨부파일 저장 경로
	       *  
	       * 4. 새로 첨부된 파일, 기존 첨부 파일 o
	       *       => originName: 새로운 첨부파일 원본명, changeName: 새로운 첨부파일 저장 경로
	       */
	      
	      int result = nService.updateNotice(n);
	      
	      if(result > 0) { // 수정성공 => 상세페이지
	         session.setAttribute("alertMsg", "게시글 수정 완료");
	         
	         return "redirect:noticeDetailView.bo?bno=" + n.getNoticeNo();
	      } else { // 수정실패 => 에러페이지
	         model.addAttribute("errorMsg", "게시글 수정 실패");
	         
	         return "common/errorPage";
	      }
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
	
	@RequestMapping("delete.bo")
	public String deleteBoard(int bno, String filePath, HttpSession session, Model model) {
		int result = nService.deleteNotice(bno);
		
		
		
		if(result > 0) {
			// 삭제 성공
			
			// 첨부파일이 있을 경우 => 파일 삭제
			if(!filePath.equals("")) { // filePath = "resources/xxx/xxx.jpg"
				new File(session.getServletContext().getRealPath(filePath)).delete(); // 서버에 업로드된 파일 삭제
			}
			
			// 게시판 리스트 페이지 list.bo url 재요청
			session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
			return "redirect:noticeSelectlist.bo";
		}else {
			// 삭제 실패
			// 에러문구 담아서 에러페이지 포워딩(모델)
			model.addAttribute("errorMsg", "게시글 삭제 실패!");
			return "common/errorPage";
			
		}
	}	

}
