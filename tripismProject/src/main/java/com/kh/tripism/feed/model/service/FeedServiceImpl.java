package com.kh.tripism.feed.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.feed.model.dao.FeedDao;
import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.member.model.vo.Member;

@Service
public class FeedServiceImpl implements FeedService {

	@Autowired
	private FeedDao fDao;

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int insertFeed(Feed f) {
		System.out.println("서비스탔냐?");
		return fDao.insertFeed(sqlSession, f);
	}

	@Override
	public int insertFeed2(Feed f) {
		System.out.println("이미지 service 탔나?");
		return fDao.insertFeed2(sqlSession, f);
	}

	@Override
	public int deleteFeed(int feedNo) {
		return fDao.deleteFeed(sqlSession, feedNo);
	}

	@Override
	public Feed selectFeed(int feedNo) {
		return fDao.selectFeed(sqlSession, feedNo);
	}
	
	@Override
	public int updateFeed(Feed f) {
		return fDao.updateFeed(sqlSession, f);
	}
	
	@Override
	public int updateFeed2(Feed f) {
		System.out.println("update 이미지 탔나?");
		return fDao.updateFeed2(sqlSession, f);
	}

	@Override
	public int selectFeedCount() {
		return fDao.selectFeedCount(sqlSession);
	}
	
	@Override
	public int selectImgCount() {
		return fDao.selectImgCount(sqlSession);
	}

	
	@Override 
	public int selectListCount() { 
		 return fDao.selectListCount(sqlSession); 
	}
	
	
	 

	@Override
	public ArrayList<Feed> selectFeedList(PageInfo pi) {
		System.out.println("피드리스트 나왔나? service");
		return fDao.selectFeedList(sqlSession, pi);
	}
	
	@Override
	public ArrayList<Feed> selectImgList(PageInfo pi) {
		System.out.println("피드 이미지 나왔나?");
		return fDao.selectImgList(sqlSession, pi);
	}
	
	@Override
	public int selectFeedSearchCount() {
		return fDao.selectFeedSearchCount(sqlSession);
	}
	
	@Override
	public ArrayList<Feed> searchFeed(PageInfo pi, String keyword) {
		System.out.println("피드 검색 탔나? serviceimpl");
		return fDao.searchFeed(sqlSession, pi, keyword);
	}

	@Override
	public int insertReply(Reply r) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReply(int replyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReply(int replyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Reply> selectReplyList(int FeedNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Member> selectMember(PageInfo pi) {
		return fDao.selectMember(sqlSession, pi);
	}
	
	public ArrayList<Img> selectImg(PageInfo pi) {
		return fDao.selectImg(sqlSession, pi);
	}

	

	


	

	

}
