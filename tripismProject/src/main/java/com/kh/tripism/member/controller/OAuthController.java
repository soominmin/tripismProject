package com.kh.tripism.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.service.OAuthService;
import com.kh.tripism.member.model.vo.Member;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("oauth")
public class OAuthController {
	
	
	@Autowired
	private OAuthService oService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberServiceImpl mService;

	// 카카오톡 로그인
    @ResponseBody
    @RequestMapping("kakao")
    public ModelAndView kakaoCallback(@RequestParam("code") String code, Member m, HttpSession session, ModelAndView mv) {
    	System.out.println(code);
    	String token = oService.getKakaoAccessToken(code);
		Member loginUser = oService.createKakaoUser(token, m);
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			System.out.println(loginUser);
			mv.setViewName("redirect:/");
		} else {
			mv.addObject("errorMsg", "로그인실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
		
    }
    
    // 카카오톡 간편회원가입
    @ResponseBody
    @RequestMapping("kakaoinsert")
    public ModelAndView kakaoCallback2(@RequestParam("code") String code, Member m, HttpSession session, ModelAndView mv) {
    	System.out.println(code);
    	String token = oService.getKakaoAccessToken2(code);
    	Member insertMember = oService.createKakaoUser2(token, m);
    	System.out.println(insertMember);
    	mv.addObject("insertMember", insertMember).setViewName("member/enrollFormKakao");
    	return mv;
//		
//		if(loginUser != null) {
//			session.setAttribute("loginUser", loginUser);
//			System.out.println(loginUser);
//			mv.setViewName("redirect:/");
//		} else {
//			mv.addObject("errorMsg", "로그인실패");
//			mv.setViewName("common/errorPage");
//		}
    }
    
    // 카카오정보로 회원가입하기
    @RequestMapping("insert.do")
	public ModelAndView insertMember(Member m, HttpSession session, ModelAndView mv) {
		
		// 암호화 작업
		String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		
		// Member 객체에 암호문으로변경 
		m.setMemPwd(encPwd);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "회원가입 성공");
			mv.setViewName("common/main");
			return mv;
		} else {
			mv.addObject("errorMsg", "해당하는 이메일이 존재하지않습니다.").setViewName("common/errorPage");
			return mv;
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
    
    
}
