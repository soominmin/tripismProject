package com.kh.tripism.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.member.model.vo.BookMark;
import com.kh.tripism.member.model.vo.Folder;
import com.kh.tripism.member.model.vo.Follow;
import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.travelSpot.model.vo.Spot;

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
	
	public int emailCheck(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.emailCheck", checkEmail);
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
	
	// 동행관련 리스트 조회
	public ArrayList<PnBoard> writtenSelectList(SqlSessionTemplate sqlSession, PageInfo pi, int memNo) {
			//System.out.println("selectListDao");
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();	// 몇개 건너 뛸 건지
		int limit = pi.getBoardLimit();	// 총 몇개를 조회할건지
			
		RowBounds rowBounds = new RowBounds(offset, limit);
			
		return (ArrayList)sqlSession.selectList("memberMapper.writtenSelectList", memNo, rowBounds);	
	}
	
	// 마이페이지 즐겨찾기 폴더 List조회
	public ArrayList<Folder> folderSelectList(SqlSessionTemplate sqlSession, int memNo){
		return (ArrayList)sqlSession.selectList("memberMapper.folderSelectList", memNo);
	}
	
	// 폴더안에 여행지 추가
	public int insertBookMarkList(SqlSessionTemplate sqlSession, BookMark bm){
		return sqlSession.insert("memberMapper.insertBookMark", bm);
	}
	
	// 다른사람 마이페이지 조회
	public Member otherPage(SqlSessionTemplate sqlSession,int memNo) {
		return sqlSession.selectOne("memberMapper.otherPage", memNo);
	}
	
	// 폴더안에 여행지 조회
	public ArrayList<Spot> selectSpotList(SqlSessionTemplate sqlSession, int folderNo){
		return (ArrayList)sqlSession.selectList("memberMapper.selectSpotList", folderNo);
	}
	
	// 좋아요한 여행지 조회
	public ArrayList<Spot> spotLike(SqlSessionTemplate sqlSession, int memNo){
		return (ArrayList)sqlSession.selectList("memberMapper.spotLike", memNo);
	}
	
	// 팔로잉 하는거
	public int following(SqlSessionTemplate sqlSession, Follow f) {
		return sqlSession.insert("memberMapper.following", f);
	}
	
	// 팔로잉목록
	public ArrayList<Follow> followingList(SqlSessionTemplate sqlSession, int loginUserNo){
		return (ArrayList)sqlSession.selectList("memberMapper.followingList", loginUserNo);
	}
	
	// 팔로워목록
	public ArrayList<Follow> followerList(SqlSessionTemplate sqlSession, int loginUserNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.followerList", loginUserNo);
	}
	
	public int followerCount(SqlSessionTemplate sqlSession, int loginUserNo) {
		return sqlSession.selectOne("memberMapper.followerCount", loginUserNo);
	}

	

	
}
