package com.kh.tripism.partnerBoard.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.service.PnBoardServiceImpl;
import com.kh.tripism.partnerBoard.model.vo.PnApply;
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
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 30, 25);
		ArrayList<PnBoard> pnList = bService.selectList(pi);
		System.out.println("pnList : " + pnList);
		
		mv.addObject("pi", pi).addObject("pnlist", pnList).setViewName("travelPartner/partnerList"); 
		
		return mv;
	}
	
	
	// 게시글 상세보기
	@RequestMapping("detail.pn")
	public String detailForm(int pno, Model model,HttpSession session) {
		
		int result = bService.increaseCount(pno);
		Member loginUser = (Member)session.getAttribute("loginUser");
		if(result > 0) {
			PnBoard pb = bService.selectPnBoard(pno);
			 System.out.println(pb);
			model.addAttribute("pb", pb);	
			
			// 로그인한 사용자가 맞으면, 동행신청 목록 보여주는
			if(loginUser!=null && pb.getMemNo()==loginUser.getMemNo()) {
				ArrayList<PnApply> applyList = bService.selectPnAppyList(pno);
				System.out.println("applyList:"+applyList);
				
				model.addAttribute("applyList",applyList);
			}
			
			return "travelPartner/detailForm";
			
		} else {
			model.addAttribute("errorMsg", "게시글 상세조회 실패!");
			return "common/errorPage";
		}
	}

	
	// 게시글 작성 폼
	@RequestMapping("enrollForm.pn")
	public String enrollForm() {
		return "travelPartner/enrollForm";
	}
	
	
	
	// 게시글 작성 값 전달하기
	@RequestMapping("insert.pn")
	public String insertPnBoard(PnBoard pb, MultipartFile upfile, HttpSession session, Model model) {
		
		 System.out.println("pb:" + pb);
		 System.out.println("upfile:" + upfile);
		
		
		if(!upfile.getOriginalFilename().equals("")) {
			String partnerChangeImg = saveFile(upfile,session);
			
			pb.setPartnerOriginalImg(upfile.getOriginalFilename());
			pb.setPartnerChangeImg("resources/uploadFiles/" + partnerChangeImg);
		}
		
		int result = bService.insertPnBoard(pb);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글 등록 되었습니다!");
			return "redirect:list.pn";
		} else {
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorPage";
		}
		
	}
	

	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String partnerOriginalImg = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = partnerOriginalImg.substring(partnerOriginalImg.lastIndexOf("."));
		
		String partnerChangeImg = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
	
			try {
				upfile.transferTo(new File(savePath + partnerChangeImg));
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
	
		
		return partnerChangeImg;
	}
	
	
	
	// 게시글 수정폼 (작성예정)
	@RequestMapping("updateForm.pn")
	public String updateForm(int pnBoardNo, Model model) {
		String path = System.getProperty("resources");
        System.out.println("현재 작업 경로: " + path);
        PnBoard pb =  bService.selectPnBoard(pnBoardNo);
        pb.setPartnerOriginalImg("resources/img/partner/"+pb.getPartnerOriginalImg());
		model.addAttribute("pb",pb);
		
		return "travelPartner/pnBoardUpdateForm";	// 수정 폼 만들어야 됨..
	}
	
	
	
	// 게시글 수정폼 (작성예정)
	@RequestMapping("update.pn")
	public String updatePnBoard(PnBoard pb, MultipartFile reupfile, HttpSession session, Model model) {
		
		System.out.println(reupfile);
		
		System.out.println("파일명 : " + reupfile.getOriginalFilename());
		
		if(reupfile.getOriginalFilename() != null) {
			if(pb.getPartnerOriginalImg() != null) {
				new File(session.getServletContext().getRealPath(pb.getPartnerChangeImg())).delete();
			}
			
			String changeName = saveFile(reupfile, session);
			
			pb.setPartnerOriginalImg(reupfile.getOriginalFilename());
			pb.setPartnerChangeImg("resources/uploadFiles/" + changeName);
		}
		
		System.out.println("서비스 타기 전");
		
		System.out.println(pb);
		
		int result = bService.updatePnBoard(pb);
		
		System.out.println("result : " + result);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다!");
			
			return "redirect:detail.pn?pno=" + pb.getPostNo();
		} else {
			model.addAttribute("errorMsg","게시글 수정 실패");
			
			return "/common/errorPage";
		}
	}
	
	

	
	
	// 게시글 삭제폼 (작성예정)
	@RequestMapping("delete.pn")
	public String selectPnBoard(int pnBoardNo, String filePath, HttpSession session, Model model) {
		int result = bService.deletePnBoard(pnBoardNo);
		
		if(result > 0) {
			if(!filePath.equals("")) {
				new File(session.getServletContext().getRealPath(filePath)).delete();
			}
			session.setAttribute("alertMsg", "게시글이 삭제 되었습니다.");
			return "redirect:list.pn";
		
		} else {
			model.addAttribute("errorMsg", "게시글 삭제 실패!");
			return "common/errorPage";
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value = "rlist.pn", produces = "application/json; charset=utf-8")
	public String ajaxselectPnReplyList(int postNo) {
		
		ArrayList<Reply> list = bService.selectPnReplyList(postNo);
		System.out.println("controller의 list: " + list);
		return new Gson().toJson(list);
	}
	
	
	@ResponseBody
	@RequestMapping("rinsert.pn")
	public String ajaxInsertPnReply(Reply pr) {
		
		System.out.println(pr);
		
		int result = 0;
		
		System.out.println("타기전 리절트 : " + result);
		result = bService.insertPnReply(pr);
		System.out.println("타고나서 ㅇㅇㅇ 리절트 : " + result);
		
		return result > 0 ? "success" : "fail";
	}
	
	

	
	//동행신청 수락
	/*
	 * @RequestMapping("accept.pn")
	 * 
	 * public String partnerAccept(int memNo, String accept) {
	 * if(accept.equals("Y")) {
	 * 
	 * }else {
	 * 
	 * } return }
	 */
	
	
	//동행신청 거절
	
	@ResponseBody
	@RequestMapping(value = "partnerReq.pn", produces = "application/json; charset=utf-8")
	public String partnerReq(PnApply pa) {
		System.out.println(pa.getMemNo());
		System.out.println(pa.getPostNo());
		int result = bService.insertPnApply(pa);
		
		System.out.println(result);
		return null;
		
	}
	@ResponseBody
	@RequestMapping(value = "partnerAcc.pn", produces = "application/json; charset=utf-8")
	public String partnerAcc(int memNo) {
		System.out.println(memNo);
		int result = bService.updatePnApply(memNo);
		
		System.out.println(result);
		return null;
		
	}
	@ResponseBody
	@RequestMapping(value = "partnerDel.pn", produces = "application/json; charset=utf-8")
	public String partnerDel(int memNo) {
		System.out.println(memNo);
		int result = bService.deletePnApply(memNo);
		
		System.out.println(result);
		return null;
		
	}
	
	@ResponseBody
	@RequestMapping(value = "openChat.pn", produces = "application/json; charset=utf-8")
	public String openChat(PnApply pa) {
		System.out.println(pa.getMemNo());
		System.out.println(pa.getPostNo());
//		int result = bService.deletePnApply(memNo);
		int result = bService.openChat(pa);
		
//		System.out.println(result);
		return null;
		
	}
	@ResponseBody
	@RequestMapping(value = "openRoom.pn", produces = "application/json; charset=utf-8")
	public String openRoom(PnApply pa) {
		System.out.println(pa.getMemNickname());
		System.out.println(pa.getPostNo());
//		int result = bService.deletePnApply(memNo);
		int result = bService.openRoom(pa);
		if(result>1) {
			return "Y";
		}else {
			
			return "N";
		}
//		System.out.println(result);
		
	}
	
	
}





















