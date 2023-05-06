package com.kh.tripism.member.model.service;

import org.springframework.ui.Model;

import com.kh.tripism.member.model.vo.Member;

public interface MemberService {
		// 로그인 서비스 (select)
		Member loginMember(Member m);
		
		// 회원가입 서비스 (insert)
		int insertMember(Member m);
		
		// 정보수정 서비스 (update)
		int updateMember(Member m);
		
		// 회원탈퇴 서비스 (update)
		int deleteMember(String memId);
		
		// 아이디 중복체크 서비스 (select)
		int idCheck(String checkId);
		
		// 닉네임 중복체크 서비스
		int nicknameCheck(String checkNickname);
		
		// 아이디 찾기 서비스
		Member idfind2(Member m);
		
		// 비밀번호 찾기(인증번호전) 서비스
		Member pwdfind(Member m);
}
