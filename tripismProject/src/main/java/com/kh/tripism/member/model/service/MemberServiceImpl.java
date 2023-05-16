package com.kh.tripism.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.member.model.dao.MemberDao;
import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 스프링에서 다름
	
	// 로그인
	@Override
	public Member loginMember(Member m) {
		Member loginUser = mDao.loginMember(m, sqlSession);
		return loginUser;
	}
	
	// 회원가입
	@Override
	public int insertMember(Member m) {
		int result = mDao.insertMember(sqlSession, m);
		return result;
	}
	
	// 탈퇴
	@Override
	public int deleteMember(Member m) {
		int result = mDao.deleteMember(sqlSession, m);
		return result;
	}
	
	// 회원가입 아이디 중복확인
	@Override
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}

	// 회원가입 닉네임 중복확인
	@Override
	public int nicknameCheck(String checkNickname) {
		return mDao.nicknameCheck(sqlSession, checkNickname);
	}
	
	// 이메일 중복확인
	@Override
	public int emailCheck(String email) {
		return mDao.emailCheck(sqlSession, email);
	}

	// 아이디 찾기
	@Override
	public Member idfind2(Member m) {
		return mDao.idfind2(sqlSession, m);
	}
	
	// 비밀번호 찾기
	@Override
	public Member pwdfind(Member m) {
		return mDao.pwdfind(sqlSession, m);
	}
	
	// 비밀번호 찾기에서 비밀번호 변경하기
	@Override
	public int pwdUpdate(Member m) {
		int result = mDao.pwdUpdate(sqlSession, m);
		return result;
	}
	
	// 마이페이지에서 비밀번호 변경하기
	@Override
	public int pwdUpdateMypage(Member m) {
		int result = mDao.pwdUpdateMypage(sqlSession, m);
		return result;
	}
	
	// 닉네임 변경하기
	@Override
	public int nicknameUpdate(Member m) {
		int result = mDao.nicknameUpdate(sqlSession, m);
		return result;
	}
	
	// 마이페이지 사진변경
	@Override
	public int profile(Member m) {
		int result = mDao.profile(sqlSession, m);
		return result;
		}
	
	// 즐겨찾기 폴더추가 (insert)
	@Override
	public int insertFolder(Folder f) {
		int result = mDao.insertFolder(sqlSession, f);
		return result;
	}
	
	// 나의 동행 게시글 목록 조회
	@Override
	public ArrayList<PnBoard> writtenSelectList(PageInfo pi, int memNo) {
		return mDao.writtenSelectList(sqlSession, pi, memNo);
	}

	
	




	@Override
	public int insertMBTI(Member m) {
		int result = mDao.insertMBTI(sqlSession,m);
		return result;
	}

	
	@Override
	public String resultMBTI(String result) {
		System.out.println(result);
		String mbti="";
		mbti += (countStr(result,'E')>countStr(result, 'I'))?"E":"I";
		mbti += (countStr(result,'S')>countStr(result, 'N'))?"S":"N";
		mbti += (countStr(result,'T')>countStr(result, 'F'))?"T":"F";
		mbti += (countStr(result,'J')>countStr(result, 'P'))?"J":"P";
		System.out.println(mbti);
		return mbti;
	}
	
	public static int countStr(String str,char ch) {
		int count=0;
		for(int i=0;i<str.length();i++){
			if(str.charAt(i)==ch) {
				count++;
			}
		}
		return count;
	}








	

}
