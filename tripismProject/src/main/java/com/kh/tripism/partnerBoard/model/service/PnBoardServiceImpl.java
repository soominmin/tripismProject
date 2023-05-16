package com.kh.tripism.partnerBoard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.partnerBoard.model.dao.PnBoardDao;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.common.vo.Reply;

@Service
public class PnBoardServiceImpl implements PnBoardService {
	
	
	// PnBoardDao 불러오기
	@Autowired
	private PnBoardDao pbDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	

	// 1. 게시판 리스트 페이지 조회용 서비스(페이징처리)
	@Override
	public int selectListCount() {
		// System.out.println("selectListCount");
		return pbDao.selectListCount(sqlSession);
	}

	// 페이징처리를 위한 목록을 리턴하는 메소드
	@Override
	public ArrayList<PnBoard> selectList(PageInfo pi) {
		return pbDao.selectList(sqlSession, pi);
	}

	// 2. 게시글 작성하기 위한 서비스
	@Override
	public int insertPnBoard(PnBoard pb) {
		return pbDao.insertPnBoard(sqlSession, pb);
	}
	

	// 3. 게시글 상세 조회용 서비스
	// - 카운트 올리기
	@Override
	public int increaseCount(int pnBoardNo) {
		return pbDao.increaseCount(sqlSession, pnBoardNo);
	}
	// - 게시글 조회
	@Override
	public PnBoard selectPnBoard(int pnBoardNo) {
		return pbDao.selectPnBoard(sqlSession, pnBoardNo);
	}
	

	// 4. 게시글 삭제용 서비스
	@Override
	public int deletePnBoard(int pnBoardNo) {
		return pbDao.deletePnBoard(sqlSession, pnBoardNo);
	}

	// 5. 게시글 수정용 서비스
	@Override
	public int updatePnBoard(PnBoard pb) {
		return pbDao.updatePnBoard(sqlSession, pb);
	}

	// 6. 댓글 리스트 조회
	@Override
	public ArrayList<Reply> selectPnReplyList(int pnBoardNo) {
		return pbDao.selectReplyList(sqlSession, pnBoardNo);
	}

	// 7. 댓글 작성용 서비스(ajax)
	@Override
	public int insertPnReply(Reply pr) {
		return pbDao.insertReply(sqlSession, pr);
	}

	

}
