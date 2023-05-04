package com.kh.tripism.member.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

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
