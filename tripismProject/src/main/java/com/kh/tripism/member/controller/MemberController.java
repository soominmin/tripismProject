package com.kh.tripism.member.controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpHeaders;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.kh.tripism.common.template.Pagination;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.member.model.service.KakaoService;
import com.kh.tripism.member.model.service.MailSendService;
import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.vo.BookMark;
import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.service.PnBoardServiceImpl;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.travelSpot.model.service.SpotServiceImpl;
import com.kh.tripism.travelSpot.model.vo.Spot;


@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MailSendService mailService;
	
	@Autowired
	private PnBoardServiceImpl bService;
	
	
	// 로그인 (암호화작업)
	@RequestMapping("login.do")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		
//		 String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());
//		//Member 객체에 암호문으로변경 
//		 m.setMemPwd(encPwd);
//		 System.out.println(encPwd);
		Member loginUser = mService.loginMember(m);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) {
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "로그인실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 로그아웃
	@RequestMapping("logout.do")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원가입 창 띄우기
	@RequestMapping("enrollForm.do")
	public String enrollForm() {
		return "member/enrollForm";
	}
	
	// 회원가입 insert
	@RequestMapping("insert.do")
	public String insertMember(Member m, Model model, HttpSession session) {
		
		// 암호화 작업
		String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		
		// Member 객체에 암호문으로변경 
		m.setMemPwd(encPwd);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입 성공");
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	
	// 아이디 중복체크
	@ResponseBody
	@RequestMapping("idCheck.do")
	public String idCheck(String checkId) {
		int count = mService.idCheck(checkId);
		
		
		/*
		if(count > 0) {	// 이미 존재하는 아이디 사용 불가능 (NNNNN)
			return "NNNNN";
		} else { // 사용가능 (NNNNY)
			return "NNNNY";
		}
		*/
		return count > 0? "NNNNN" : "NNNNY" ;
	}
	
	// 닉네임 중복체크 **(탈퇴할때 닉네임 빈문자열로 변경할것)**
	@ResponseBody
	@RequestMapping("nicknameCheck.do")
	public String nicknameCheck(String checkNickname) {
		int count = mService.nicknameCheck(checkNickname);
		return count > 0? "NNNNN" : "NNNNY";
	}
	
	// 이메일 중복체크
	@ResponseBody
	@RequestMapping("emailCheck.do")
	public String emailCheck(String checkEmail) {
		// System.out.println(checkEmail);
		int count = mService.emailCheck(checkEmail);
		// System.out.println(count);
		return count > 0? "NNNNN" : "NNNNY";
	}
	
	// idfind form
	@RequestMapping("idfind.do")
	public String idfindForm() {
		return "member/idFind";
	}
	
	// id 최종 find
	@RequestMapping("idfind2.do")
	public ModelAndView idfind2(Member m, ModelAndView mv) {
		
		Member idfind = mService.idfind2(m);
		// System.out.println(idfind);
		mv.addObject("idfind", idfind).setViewName("member/idResult");
		
		return mv;
	}
	
	// 인증번호 받기전 form
	@RequestMapping("pwdResult.do")
	public ModelAndView pwdFind(Member m, ModelAndView mv, HttpSession session) {
		
		Member pwdfind = mService.pwdfind(m);
		
		if(pwdfind != null) {
			session.setAttribute("pwdfind", pwdfind);
			mv.setViewName("member/pwdAuthentication");
		} else {
			mv.addObject("errorMsg", "해당하는 이메일이 존재하지않습니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

	// 비밀번호 찾기 폼 이동
	@RequestMapping("pwdFindForm.do")
	public String pwdResult() {
		return "member/pwdFindForm";
	}
	
	// 인증번호 보내는 Controller
	@ResponseBody
	@RequestMapping("pwdAuth.do")
	public String pwdAuth(String email){
		
		// System.out.println("이메일 인증요청 들어옴");
		// System.out.println("이메일 인증 이메일 : " + email);
		return mailService.contentEmail(email);

	}
	
	// 인증번호 확인후 비밀번호 변경 폼 띄우기
	@RequestMapping("pwdUpdateForm.do")
	public String pwdUpdateForm() {
		return "member/pwdUpdateForm";
	}
	
	// 인증번호 확인후 비밀번호 변경하기
	@RequestMapping("pwdUpdate.do")
	public String pwdUpdateMember(Member m, HttpSession session, Model model) {
	
		// int result = mService.pwdUpdate(m);
		Member pwdfind = mService.pwdfind(m);
		
		String pwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		
		m.setMemPwd(pwd);
		// System.out.println(pwd);
		// System.out.println(pwdfind);
		
		if(pwdfind != null) {
			int pwdUpdateMem = mService.pwdUpdate(m); // m에는 변경 된 값이 있음, 갱신된 회원의 비밀번호 정보가 담겨있는 회원정보를 pwdUpdateMem
		//	session.setAttribute("pwdfind", m); // 새로운 값으로 변경
			
		//	System.out.println(pwdUpdateMem);
			session.setAttribute("alertMsg", "성공적으로 비밀번호가 변경되었습니다.");
			return "redirect:/"; // 메인화면으로
		} else {
			session.setAttribute("alertMsg", "비번수정실패");
			return "member/pwdUpdateForm";
		}
	}
	
	// 마이페이지 비밀번호변경 1차 유효성 검사
	@RequestMapping("pwdCheck.do")
	public ModelAndView pwdCheck(Member m, ModelAndView mv) {
		Member loginUser = mService.loginMember(m);
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) {
			mv.setViewName("member/pwdUpdateMypage");
		} else {
			mv.addObject("errorMsg", "비밀번호 확인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 마이페이지에서 비밀번호 변경하기
	@RequestMapping("pwdUpdateMypage.do")
	public String pwdUpdateMypage(Member m, HttpSession session, Model model) {
		
		String pwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		m.setMemPwd(pwd);
		
		int result = mService.pwdUpdateMypage(m);
		
		
		if(result > 0) {
			Member pwdUpdate = mService.loginMember(m); // 변경된 값을 담는다.
			// System.out.println("pwdUpdate"+pwdUpdate);
			session.setAttribute("loginUser", pwdUpdate); // loginUser세션에 변경된 값으로 담는다.
			session.setAttribute("alertMsg", "비밀번호변경성공");
			return "member/myPage";
		} else {
			model.addAttribute("errorMsg", "비밀번호변경실패");
			return "common/errorPage";
		}
	}
	
	// 마이페이지 화면 띄우기
	@RequestMapping("mypage.do")
	public String mypage() {
		return "member/myPage";
	}
	
	// 마이페이지내 정보수정 화면 띄우기
	@RequestMapping("myInfoUpdate.do")
	public String myInfo() {
		return "member/myInfoUpdate";
	}
	
	// 마이페이지에서 닉네임 수정하기
	@RequestMapping("nicknameUpdate.do")
	public String nicknameUpdate(Member m, HttpSession session, Model model) {
		
		int result = mService.nicknameUpdate(m);
		
		if(result>0) {
			Member nicknameUpdate = mService.loginMember(m); // 변경된 값을 담는다.
			session.setAttribute("loginUser", nicknameUpdate);
			session.setAttribute("alertMsg", "닉네임변경성공");
			return "member/myInfoUpdate";
		} else {
			model.addAttribute("errorMsg", "닉네임변경실패");
			return "common/errorPage";
		}
	}
	
	// 마이페이지에서 탈퇴시 비밀번호 확인
	@RequestMapping("deleteCheck.do")
	public ModelAndView deleteCheck(Member m, ModelAndView mv) {
		Member loginUser = mService.loginMember(m);
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) {
			mv.setViewName("member/memberDelete");
		} else {
			mv.addObject("errorMsg", "비밀번호 확인 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	 // 탈퇴하기
	@RequestMapping("deleteMember.do")
	public String deleteMember(Member m, HttpSession session, Model model) {
		int result = mService.deleteMember(m);
		
		if(result > 0) {
			session.removeAttribute("loginUser");
			session.setAttribute("alertMsg", "성공적으로 탈퇴되었습니다.");
			
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "탈퇴실패");
			return "common/errorPage";
		}
	}
	
	// 마이페이지에서 프로필 이미지 넣기
	@RequestMapping("profile.do")
	public String profile(Member m, MultipartFile upfile, HttpSession session, Model model ) {
		
		// 전달된 파일 있다는 뜻
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session);
			m.setImg("resources/uploadFiles/" + changeName);
		}
		
		int result = mService.profile(m);
		
		if(result > 0) {
			Member profileUpdate = mService.loginMember(m); // 변경된 값을 담는다.
			session.setAttribute("loginUser", profileUpdate);
			session.setAttribute("alertMsg", "성공적으로 프로필 사진이 변경되었습니다.");
			// System.out.println(m);
			return "member/myPage";
		} else {
			model.addAttribute("errorMsg", "프로필변경실패다이자식아다시해");
			return "common/errorPage";
		}
		
	}

	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할
	private String saveFile(MultipartFile upfile, HttpSession session) {

		// 파일명 수정 작업 후 서버에 업로드 시키기("flower.png" => "2023033110185545678.png" )
				String originName = upfile.getOriginalFilename(); // flower.png
				
				// "20230331101855" (년월일시분초)
				String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
				
				// 랜덤한 숫자 5자리
				int ranNum = (int)(Math.random() * 90000 + 10000); // 23152 10000~99999
				
				// 확장자
				String ext = originName.substring(originName.lastIndexOf("."));
				
				// 최종 수정명
				String changeName = currentTime + ranNum + ext;
			
				// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
				String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/"); //   "/" : webapp을 가리킨다.
			
				// 서버에 파일을 업로드
				try {
					upfile.transferTo(new File(savePath + changeName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				return changeName;
	}
	
	//즐겨찾기 모달창
	@RequestMapping("modal.do")
	public String modal() {
		return "member/bookMarkModal";
	}
	
	// 즐겨찾기 폴더추가
	@RequestMapping("insertFolder.do")
	public String insertFolder(Folder f, HttpSession session) {
		System.out.println(f);
		int result = mService.insertFolder(f);
		return "redirect:bookMarkList.do";
		
//		if(result > 0) {
//				session.setAttribute("alertMsg", "폴더추가성공");
//				mv.setViewName("member/bookMarkList");
//				return mv;
//			} else {
//				mv.addObject("errorMsg", "폴더 insert 실패");
//				mv.setViewName("common/errorPage");
//				return mv;
//			}
		}
	
	// 나의 즐겨찾기 폴더에 insert 하기
	@RequestMapping("insertBookMark.do")
	public String insertBookMark(BookMark bm) {
		int result = mService.insertBookMarkList(bm);
		return "travelSpot/travelSpotListView";
	}
	
	// 나의 즐겨찾기폴더 List 띄우기
	@RequestMapping("bookMarkList.do")
	public ModelAndView bookMarkList(HttpSession session, ModelAndView mv) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		
		ArrayList<Folder> folderList = mService.folderSelectList(memNo);
		// System.out.println(folderList);
		mv.addObject("folderList", folderList).setViewName("member/bookMarkList");
		return mv;
	}
	
	// 나의 즐겨찾기폴더 속 여행지 목록 조회
	@RequestMapping("bookMarkInnerList.do")
	public String bookMarkInnerList(Model model, @RequestParam("folderNo") int folderNo) {
		ArrayList<Spot> list = mService.selectSpotList(folderNo);
		// System.out.println("list : " + list);
		model.addAttribute("list", list);
		return "member/bookMarkInnerList";
	}
	
	// 나의 좋아요 여행지 목록 조회
	@RequestMapping("spotLike.do")
	public String spotLike(Model model, HttpSession session ) {
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		System.out.println(memNo);
		ArrayList<Spot> list = mService.spotLike(memNo);
		model.addAttribute("list", list);
		return "member/myPageSpotLike";
	}
		
	
	// 내가 작성한 동행 게시글
	@RequestMapping("partnerPostList.do")
	public ModelAndView selectList(@RequestParam(value = "cpage",defaultValue = "1") int currentPage, ModelAndView mv, HttpSession session) {
		// jsp 에서 cPage가 날라오면 int CurrentPage에 셋팅
		// defaultValue=아무것도 하지않으면 1
		// System.out.println("controllerasdsadasdasdasd");
		int listCount = bService.selectListCount();
		System.out.println("리스트조회 결과: " +listCount); // 4
		
		// 세션에서 memNo 가져오기
		Member loginUser = (Member)session.getAttribute("loginUser");
		int memNo = loginUser.getMemNo();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<PnBoard> pnList = mService.writtenSelectList(pi, memNo);
		// System.out.println(pnList);
		
		mv.addObject("pi", pi).addObject("pnlist", pnList).setViewName("member/partnerPostList");
		
		return mv;
		
	}
	
	
	// 다른사람 마이페이지 조회
	@RequestMapping("otherPage.do")
	public String otherPage(@RequestParam("memNo") int memNo, Member m, Model model, HttpSession session) {
		Member otherInfo = mService.otherPage(memNo);
		model.addAttribute("otherInfo", otherInfo);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(otherInfo.getMemNo() != loginUser.getMemNo()) {
			return "member/othersInfoPage";
		} else {
			return "member/myPage";
		}
	}
	
	// 다른사람 마이페이지 동행게시글 리스트
	@RequestMapping("otherPartnerPostList.do")
	public ModelAndView otherPartnerPostList(@RequestParam(value = "cpage",defaultValue = "1") int currentPage, ModelAndView mv, @RequestParam("memNo") int memNo) {
		// jsp 에서 cPage가 날라오면 int CurrentPage에 셋팅
		// defaultValue=아무것도 하지않으면 1
		// System.out.println("controllerasdsadasdasdasd");
		int listCount = bService.selectListCount();
		System.out.println("리스트조회 결과: " +listCount); // 4
		
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<PnBoard> pnList = mService.writtenSelectList(pi, memNo);
		// System.out.println(pnList);
		
		mv.addObject("pi", pi).addObject("pnlist", pnList).setViewName("member/otherPartnerPostList");
		
		return mv;
	}
	
	// 다른사람 마이페이지 즐겨찾기 리스트bookMarkList.do
	@RequestMapping("otherBookMarkList.do")
	public ModelAndView bookMarkList(@RequestParam("memNo") int memNo, ModelAndView mv) {
		
		ArrayList<Folder> folderList = mService.folderSelectList(memNo);
		mv.addObject("folderList", folderList).setViewName("member/otherBookMarkList");
		return mv;
	}
	
	// 팔로잉기능 loginUser가 다른 사람한테 친구추가하는거
	@ResponseBody
	@RequestMapping("following.do")
	public String following() {
		
		return "member/othersInfoPage";
	}
	
	// 다른사람 마이페이지 북마크한 여행지 조회하기
	@RequestMapping("otherbookMarkInner.do")
	public String otherbookMarkInner(Model model, @RequestParam("folderNo") int folderNo) {
		ArrayList<Spot> list = mService.selectSpotList(folderNo);
		// System.out.println("list : " + list);
		model.addAttribute("list", list);
		return "member/otherbookMarkInner";
	}
	
	// 다른사람 마이페이지 좋아요한 여행지 조회하기
	@RequestMapping("otherSpotLike.do")
	public String otherSpotLike(@RequestParam("memNo") int memNo, Model model) {
		ArrayList<Spot> list = mService.spotLike(memNo);
		model.addAttribute("list", list);
		return "member/otherSpotLike";
	}


	@RequestMapping("mbtiStart.do")
	public String mbtiStartt() {
		return "member/mbtiStart";
	}
	@RequestMapping("mbtiTest.do")
	public String mbtiTest() {
		return "member/mbtiContent";
	}
	@RequestMapping("testMbti.test")
	public String testMbti() {
		return "member/mbtiTest";
	}
	
	@RequestMapping("mbtiResult.do")
	public String mbtiResult(String result,Model model) {
		String mbti=mService.resultMBTI(result);
		
		
		model.addAttribute("mbti",mbti);
		return "member/mbtiResult";
	}
	
	@RequestMapping("mbtiInsert.do")
	public String insertMBTI(String mbti,HttpSession session) {
		
		Member m = (Member)session.getAttribute("loginUser");
		m.setMbti(mbti);
		int result = mService.insertMBTI(m);
		if(result>0) {

			
			session.setAttribute("loginUser",m); ;
		}
		
		return "member/myPage";
	}
	

	
	

}
