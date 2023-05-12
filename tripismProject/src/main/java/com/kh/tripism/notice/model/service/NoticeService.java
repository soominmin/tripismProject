package com.kh.tripism.notice.model.service;

import java.util.ArrayList;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.notice.model.vo.Notice;

public interface NoticeService {
	
	// 1. 게시판 리스트 페이지 서비스(페이징)
	int noticeSelectListCount(); // 페이징 처리를 위해 전체 개수를 리턴하는 메소드
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 2. 게시글 작성하기 서비스
	int insertNotice(Notice n);
		
	
	// 3. 게시글 상세조회용 서비스
	int increaseCount(int noticeNo);
	Notice selectNotice(int noticeNo);
	
	// 4. 게시글 삭제용 서비스
	int deleteNotice(int noticeNo);
	
	// 5. 게시글 수정용 서비스
	int updateNotice(Notice n);
	
	// 6. 댓글 리스트 조회(ajax)
//	ArrayList<Reply> selectReplyList(int boardNo);
	
	// 7. 댓글 작성용 서비스(ajax)
//	int insertReply(Reply r);
	
	// 8. 조회수 top5 리스트 조회용 서비스
	ArrayList<Notice> selectTopNoticeList();	

}
