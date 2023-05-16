package com.kh.tripism.partnerBoard.model.service;

import java.util.ArrayList;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.partnerBoard.model.vo.PnApply;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.common.vo.Reply;

public interface PnBoardService {
	
	// 1. 게시판 리스트 페이지 조회용 서비스(페이징처리)
	int selectListCount();	// 페이징처리를 위한 전체 개수를 리턴하는 메소드
	ArrayList<PnBoard> selectList(PageInfo pi);
	
	// 2. 게시글 작성하기 위한 서비스
	int insertPnBoard(PnBoard pb);
	
	// 3. 게시글 상세 조회용 서비스
	// - 카운트 올리기
	int increaseCount(int pnBoardNo);	// where 절에 그것만 조회수 올리기 해야함
	// - 게시글 조회
	PnBoard selectPnBoard(int pnBoardNo);
	
	// 4. 게시글 삭제용 서비스
	int deletePnBoard(int pnBoardNo);	
	
	// 5. 게시글 수정용 서비스
	int updatePnBoard(PnBoard pb);
	
	// 6. 댓글 리스트 조회
	ArrayList<Reply> selectPnReplyList(int pnBoardNo);
	
	// 7. 댓글 작성용 서비스(ajax)
	int insertPnReply(Reply pr);
	
	// 8. 동행 신청
	ArrayList<PnApply> selectPnAppyList(int pnBoardNo);
	
}
