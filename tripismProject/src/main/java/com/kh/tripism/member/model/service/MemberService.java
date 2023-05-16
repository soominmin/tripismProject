package com.kh.tripism.member.model.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;

public interface MemberService {
		// 로그인 서비스 (select)
		Member loginMember(Member m);
		
		// 회원가입 서비스 (insert)
		int insertMember(Member m);
		
		// 회원탈퇴 서비스 (update)
		int deleteMember(Member m);
		
		// 아이디 중복체크 서비스 (select)
		int idCheck(String checkId);
		
		// 닉네임 중복체크 서비스
		int nicknameCheck(String checkNickname);
		
		// 이메일 중복체크 서비스
		int emailCheck(String email);
		
		// 아이디 찾기 서비스
		Member idfind2(Member m);
		
		// 비밀번호 찾기(인증번호 전) 서비스
		Member pwdfind(Member m);
		
		// 비밀번호 변경(인증번호 후)서비스
		int pwdUpdate(Member m);
		
		// 마이페이지에서 비밀번호 변경 서비스
		int pwdUpdateMypage(Member m);
		
		// MBTI 결과
		String resultMBTI(String result);
		
		// MBTI 결과 등록하기 (insert)
		int insertMBTI(Member m);
		
		// 닉네임 수정
		int nicknameUpdate(Member m);
		
		// 마이페이지 사진넣기
		int profile(Member m);
		
		// 폴더추가하기
		int insertFolder(Folder f);
		
		// 나의 동행 게시글
		ArrayList<PnBoard> writtenSelectList(PageInfo pi, int memNo);

		
}
