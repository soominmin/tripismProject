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
	
	
}
