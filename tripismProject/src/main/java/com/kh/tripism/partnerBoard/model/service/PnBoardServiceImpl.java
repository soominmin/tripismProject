package com.kh.tripism.partnerBoard.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.partnerBoard.model.dao.PnBoardDao;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.partnerBoard.model.vo.PnReply;

public class PnBoardServiceImpl implements PnBoardService {
	
	
	// PnBoardDao 불러오기
	@Autowired
	private PnBoardDao pbDao;
	

	// 1. 게시판 리스트 페이지 조회용 서비스(페이징처리)
	@Override
	public int selectListCount() {
		return 0;
	}

	// 페이징처리를 위한 전체 개수를 리턴하는 메소드
	@Override
	public ArrayList<PnBoard> selectList(PageInfo pi) {
		return null;
	}

	// 2. 게시글 작성하기 위한 서비스
	@Override
	public int insertPnBoard(PnBoard pb) {
		return 0;
	}
	

	// 3. 게시글 상세 조회용 서비스
	// - 카운트 올리기
	@Override
	public int increaseCount(int PnBoardNo) {
		return 0;
	}
	// - 게시글 조회
	@Override
	public PnBoard selectPnBoard(int PnBoardNo) {
		return null;
	}
	

	// 4. 게시글 삭제용 서비스
	@Override
	public int deletePnBoard(int PnBoardNo) {
		return 0;
	}

	// 5. 게시글 수정용 서비스
	@Override
	public int updatePnBoard(PnBoard pb) {
		return 0;
	}

	// 6. 댓글 리스트 조회
	@Override
	public ArrayList<PnReply> selectPnReplyList(int PnBoardNo) {
		return null;
	}

	// 7. 댓글 작성용 서비스(ajax)
	@Override
	public int insertPnReply(PnReply pr) {
		return 0;
	}


}
