package com.kh.tripism.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired // DI(Dependency Injection) 특징 = 의존성 주입
	private MemberServiceImpl mService; // 권장
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		Member loginUser = mService.loginMember(m); 
		
		return mv;
	}

	@RequestMapping("idfind.do")
	public String EnrollMemberForm() {
		return "member/idFind";
	}
	
	@RequestMapping("idResult.do")
	public String idResult() {
		return "member/idResult";
	}
	
	@RequestMapping("pwdFind.do")
	public String pwdFind() {
		return "member/pwdFind";
	}
	
	@RequestMapping("pwdAuthentication.do")
	public String pwdAuthentication() {
		return "member/pwdAuthentication";
	}
	
	@RequestMapping("pwdResult.do")
	public String pwdResult() {
		return "member/pwdResult";
	}
	
	@RequestMapping("mypage.bo")
	public String mypage() {
		return "member/myPage";
	}
	
	@RequestMapping("enrollForm.do")
	public String enrollForm() {
		return "member/enrollForm";
	}

	
}
