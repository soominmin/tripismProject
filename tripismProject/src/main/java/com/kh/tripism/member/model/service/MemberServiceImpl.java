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
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.loginMember(m, sqlSession);
		
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {

		int result = mDao.insertMember(sqlSession, m);
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
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}

	@Override
	public int nicknameCheck(String checkNickname) {
		return mDao.nicknameCheck(sqlSession, checkNickname);
	}

	@Override
	public Member idfind2(Member m) {
		return mDao.idfind2(sqlSession, m);
	}

	@Override
	public Member pwdfind(Member m) {
		return mDao.pwdfind(sqlSession, m);
	}
	

}
