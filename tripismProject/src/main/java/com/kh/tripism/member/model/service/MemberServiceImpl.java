package com.kh.tripism.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.member.model.dao.MemberDao;
import com.kh.tripism.member.model.vo.Member;

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
	
	@Override
	public int updateMember(Member m) {
		return 0;
	}
	
	@Override
	public int deleteMember(String userId) {
		return 0;
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
