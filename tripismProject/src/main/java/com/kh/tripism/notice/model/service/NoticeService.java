package com.kh.tripism.notice.model.service;

import java.util.ArrayList;

import com.kh.tripism.common.model.vo.PageInfo;
import com.kh.tripism.notice.model.vo.Notice;

public interface NoticeService {
	// 게시판 리스트 페이징
	int selectListCount();
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 게시판 작성하기 서비스
	int insertNotice(Notice n);
	
	// 게시글 상세조회 서비스
	int increaseCount(int noticeNo);
	Notice selectNotice(int noticeNo);
	
	// 게시글 삭제용 서비스
	int deleteNotice(int noticeNo);
	
	// 게시글 수정용 서비스
	int updateNotice(Notice n);
	
	

}
