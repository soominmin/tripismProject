package com.kh.tripism.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.tripism.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public Member loginMember(Member m, SqlSessionTemplate sqlSession){
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	
	public int nicknameCheck(SqlSessionTemplate sqlSession, String checkNickname) {
		return sqlSession.selectOne("memberMapper.nicknameCheck", checkNickname);
	}
	
	public Member idfind2(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.idfind2", m);
	}
	
	public Member pwdfind(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.pwdfind", m);
	}
	
	public int pwdUpdate(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.pwdUpdate", m);
	}
	
	public int pwdUpdateMypage(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.pwdUpdate", m);
	}
	

	

	
}
