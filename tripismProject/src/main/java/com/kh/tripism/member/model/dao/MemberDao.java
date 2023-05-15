package com.kh.tripism.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public static Member loginMember(Member m, SqlSessionTemplate sqlSession){
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
	
	public int nicknameUpdate(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.nicknameUpdate", m);
	}
	
	public int insertMBTI(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.update("memberMapper.insertMBTI",m);
	}
	
	public int emailCheck(SqlSessionTemplate sqlSession, String email) {
		return sqlSession.selectOne("memberMapper.emailCheck", email);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.deleteMember", m);
	}
	
	public int profile(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.profile", m);
	}
	
	public int insertFolder(SqlSessionTemplate sqlSession, Folder f) {
		return sqlSession.insert("memberMapper.insertFolder", f);
	}
	

	

	
}
