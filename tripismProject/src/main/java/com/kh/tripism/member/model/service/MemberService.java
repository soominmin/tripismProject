package com.kh.tripism.member.model.service;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.member.model.vo.BookMark;
import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Follow;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.travelSpot.model.vo.Spot;

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
		
		// 나의 동행 게시글조회
		ArrayList<PnBoard> writtenSelectList(PageInfo pi, int memNo);
		
		// 나의 즐겨찾기폴더 목록조회
		ArrayList<Folder> folderSelectList(int memNo);
		
		// 폴더안에 여행지 추가
		int insertBookMarkList(BookMark bm);
		
		// 다른사람 마이페이지 조회
		Member otherPage(int memNo);
		
		// 여행지조회
		ArrayList<Spot> selectSpotList(int folderNo);
		
		// 좋아요한거 조회
		ArrayList<Spot> spotLike(int memNo);
		
		// 팔로잉 (insert) (loginUser가 다른사람 마페에서 팔로잉버튼누름)
		int following(Follow f);
		
		// 팔로잉 목록
		ArrayList<Follow> followingList(int loginUserNo);
		
		// 팔로워 목록
		ArrayList<Follow> followerList(int loginUserNo);
		
		int followerCount(int loginUserNo);
		
		
		

		
}
