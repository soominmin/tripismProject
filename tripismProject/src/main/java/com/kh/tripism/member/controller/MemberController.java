package com.kh.tripism.member.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인 (암호화작업)
	@RequestMapping("login.do")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		
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
	public ModelAndView pwdFind(Member m, ModelAndView mv) {
		
		Member pwdfind = mService.pwdfind(m);
		System.out.println(pwdfind);
		mv.addObject("pwdfind", pwdfind).setViewName("member/pwdAuthentication");
		return mv;
	}

	// 비밀번호 변경 폼 이동
	@RequestMapping("pwdFindForm.do")
	public String pwdResult() {
		return "member/pwdFindForm";
	}
	
//	// 인증번호 발송
//	@ResponseBody
//	@GetMapping("/mailCheck")
//	public String mailCheck(String email) {
//		System.out.println("이메일 인증 요청이 들어옴");
//		System.out.println("이메일 인증 이메일 : " + email);
//		
//	}

	@RequestMapping("mypage.do")
	public String mypage() {
		return "member/myPage";
	}



	@RequestMapping("spotLike.do")
	public String spotLike() {
		return "member/myPageTripLikeItems";
	}

	@RequestMapping("userSetting.do")
	public String userSetting() {
		return "member/usersetting";
	}

	@RequestMapping("partnerPostList.do")
	public String partnerPostList() {
		return "member/partnerPostList";
	}

	@RequestMapping("bookMarkList.do")
	public String bookMarkList() {
		return "member/bookMarkList";
	}

	@RequestMapping("following.do")
	public String following() {
		return "member/following";
	}

	@RequestMapping("otherPage.do")
	public String otherPage() {
		return "member/othersInfoPage";
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
	

}
