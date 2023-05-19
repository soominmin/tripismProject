package com.kh.tripism.member.controller;

import java.math.BigInteger;
import java.security.SecureRandom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.tripism.member.model.service.MemberServiceImpl;
import com.kh.tripism.member.model.service.NaverService;
import com.kh.tripism.member.model.service.OAuthService;
import com.kh.tripism.member.model.vo.Member;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class NaverController {
	
	@Autowired
	private NaverService nService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberServiceImpl mService;
	
	// 네이버로그인
	@ResponseBody
    @RequestMapping(value="naverLogin", produces="application/json; charset=utf-8")
    public ModelAndView naverCallback(@RequestParam("code") String code, HttpSession session, ModelAndView mv) {
    	System.out.println(code);
        SecureRandom random = new SecureRandom();
        String state = new BigInteger(130, random).toString();
        session.setAttribute("state", state);
        System.out.println("state"+state);
    	String token = nService.getNaverAccessToken(code, state); // 토큰 받음
    	
		 nService.createNaverUser(token); // 정보담김
		
//		if(loginUser != null) {
//			session.setAttribute("loginUser", loginUser);
//			System.out.println(loginUser);
//			mv.setViewName("redirect:/");
//		} else {
//			mv.addObject("errorMsg", "로그인실패");
//			mv.setViewName("common/errorPage");
//		}
		return mv;
		
    }

}
