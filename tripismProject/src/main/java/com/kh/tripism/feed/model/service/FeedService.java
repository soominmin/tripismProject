package com.kh.tripism.feed.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.tripism.feed.model.vo.Feed;
import com.kh.tripism.feed.model.vo.Img;
import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.common.vo.Reply;


public interface FeedService {
	
	// 1. 피드 추가
	int insertFeed(Feed f);
	
	int insertFeed2(Feed f);
	
	// 2. 피드 삭제
	int deleteFeed(int feedNo);
	
	// 3. 피드 수정
	Feed selectFeed(int feedNo);
	int updateFeed(Feed f);
	
	// 4-1. 피드 조회수 조회 << 안쓸것
	int selectListCount();
	
	// 4-2. 피드 리스트 조회
	int selectFeedCount();
	ArrayList<Feed> selectFeedList(PageInfo pi);
	
	// 5. 댓글 추가
	int insertReply(Reply r);
	
	// 6. 댓글 삭제
	int deleteReply(int replyNo);
	
	// 7. 댓글 수정
	int updateReply(int replyNo);
	
	// 8. 댓글 리스트 조회(ajax)
	ArrayList<Reply> selectReplyList(int FeedNo);
	
	// 9. 피드 이미지 조회
	int selectImgCount();
	ArrayList<Feed> selectImgList(PageInfo pi);
	
	// 10. 피드 검색
	ArrayList<Feed> searchFeed(PageInfo pi, String keyword);
	
	// 11. 피드 검색수 조회
	int selectFeedSearchCount();
	
}