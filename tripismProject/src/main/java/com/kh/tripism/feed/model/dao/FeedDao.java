package com.kh.tripism.feed.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.feed.model.vo.Reply;

@Repository
public class FeedDao {

	// 피드 추가
	public int insertFeed(SqlSessionTemplate sqlSession, Feed f) {
		System.out.println("dao 탔나?");
		return sqlSession.insert("feedMapper.insertFeed", f);
	};
	
	// 피드 삭제
	public int deleteFeed(SqlSessionTemplate sqlSession, int feedNo) {
		return sqlSession.delete("feedMapper.deleteFeed", feedNo);
	};
	
	// 피드 수정
	public int updateFeed(SqlSessionTemplate sqlSession, Feed f) {
		return sqlSession.update("feedMapper.updateFeed", f);
	};
	
	// 피드 개수 셈
	public int selectFeedCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("FeedMapper.selectFeedCount");
	}
	
	// 피드 목록 조회 *
	public ArrayList<Feed> selectFeedList(SqlSessionTemplate sqlSession, PageInfo pi){
		return (ArrayList)sqlSession.selectList("feedMapper.selectFeedList");
	}
	
	// 댓글 추가
	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("feedMapper.insertReply", r);
	};
	
	// 댓글 삭제
	public int deleteReply(SqlSessionTemplate sqlSession, int replyNo) {
		return sqlSession.delete("feedMapper.deleteReply", replyNo);
	}
	
	// 댓글 수정
	public int updateReply(SqlSessionTemplate sqlSession, int replyNo) {
		return sqlSession.update("feedMapper.updateReply", replyNo);
	}
	
	// 댓글 목록 조회 *
	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int feedNo) {
		return (ArrayList)sqlSession.selectList("feedMapper.selectReplyList", feedNo);
	}
	
	// 인기 피드 조회
	public ArrayList<Feed> selectTopFeedList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("feedMapper.selectTopFeedList");
	}
}
