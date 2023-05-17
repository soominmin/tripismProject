package com.kh.tripism.feed.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;

import com.kh.tripism.member.model.vo.Member;

@Repository
public class FeedDao {
	
	// 피드 목록 조회 *
	public ArrayList<Feed> selectFeedList(SqlSessionTemplate sqlSession, PageInfo pi) {
		System.out.println("피드 리스트 나왔나 dao");
		return (ArrayList) sqlSession.selectList("feedMapper.selectFeedList", null);
	}
	
	public ArrayList<Feed> selectImgList(SqlSessionTemplate sqlSession, PageInfo pi) {
		System.out.println("피드 이미지 리스트 나왔나? Dao");
		return (ArrayList) sqlSession.selectList("feedMapper.selectImgList", null);
	}
	
	public ArrayList<Feed> searchFeed(SqlSessionTemplate sqlSession, PageInfo pi, String keyword) {
		System.out.println("피드 검색 잘 하고있나? dao");
		
		ArrayList<Feed> feeds = (ArrayList) sqlSession.selectList("feedMapper.searchFeed", keyword);
		System.out.println(feeds);
		return feeds;
//		return (ArrayList) sqlSession.selectList("feedMapper.searchFeed", null);
	}

	// 피드 추가
	public int insertFeed(SqlSessionTemplate sqlSession, Feed f) { // feed 제목/본문 넣어주는 부분
		System.out.println("dao 탔나?");
		return sqlSession.insert("feedMapper.insertFeed", f);
	};

	public int insertFeed2(SqlSession sqlSession, Feed f) { // feed 이미지 넣는 부분
		System.out.println("dao 이미지편 탔나?");

		return sqlSession.insert("feedMapper.insertFeed2", f);
	}

	// 피드 삭제
	public int deleteFeed(SqlSessionTemplate sqlSession, int feedNo) { // feed 지우는 부분
		return sqlSession.delete("feedMapper.deleteFeed", feedNo);
	};

	// 피드 수정
	public Feed selectFeed(SqlSessionTemplate sqlSession, int feedNo) {
		return sqlSession.selectOne("feedMapper.selectFeed", feedNo);
	}

	public int updateFeed(SqlSessionTemplate sqlSession, Feed f) {
		return sqlSession.update("feedMapper.updateFeed", f);
	};
	
	public int updateFeed2(SqlSessionTemplate sqlSession, Feed f) {
		return sqlSession.update("feedMapper.updateFeed2", f);
	}

	// 피드 개수 셈
	public int selectFeedCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("feedMapper.selectFeedCount");
	}

	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("feedMapper.selectFeedCount");
	}

	public int selectImgCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("feedMapper.selectImgCount");
	}
	
	public int selectFeedSearchCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("feedMapper.selectFeedSearchCount");
	}
	
	// 댓글 목록 조회 *
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int feedNo) {
		return (ArrayList) sqlSession.selectList("feedMapper.selectReplyList", feedNo);
	}
	
	// 댓글 추가
	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("feedMapper.insertReply", r);
	};
	
	
	// 댓글 삭제
	/*
	public int deleteReply(SqlSessionTemplate sqlSession, int replyNo) {
		return sqlSession.delete("feedMapper.deleteReply", replyNo);
	}
	*/
	
	// 댓글 수정
	/*
	public int updateReply(SqlSessionTemplate sqlSession, int replyNo) {
		return sqlSession.update("feedMapper.updateReply", replyNo);
	}
	*/
	
	public ArrayList<Member> selectMember(SqlSessionTemplate sqlSession, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("feedMapper.selectMember");
	}

	public ArrayList<Img> selectImg(SqlSessionTemplate sqlSession, PageInfo pi) {
		return (ArrayList) sqlSession.selectList("feedMapper.selectImg");
	}

}
