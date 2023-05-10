package com.kh.tripism.member.controller;

import java.io.IOException;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.member.model.service.MailSendService;
import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MailSendService mailService;
	
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
			return "redirect:mypage.do";
		} else {
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	

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
