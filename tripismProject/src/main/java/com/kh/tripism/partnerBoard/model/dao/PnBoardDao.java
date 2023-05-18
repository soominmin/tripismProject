package com.kh.tripism.partnerBoard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.common.vo.PageInfo;
import com.kh.tripism.partnerBoard.model.vo.PnApply;
import com.kh.tripism.partnerBoard.model.vo.PnBoard;
import com.kh.tripism.common.vo.Reply;

@Repository
public class PnBoardDao {
	
	// 동행관련 조회수 
	public int selectListCount(SqlSessionTemplate sqlSession) {
		// System.out.println("selectLisCountDao");
		
		return sqlSession.selectOne("pnBoardMapper.selectListCount");
	}
	
	// 동행관련 리스트 조회
	public ArrayList<PnBoard> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		//System.out.println("selectListDao");
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();	// 몇개 건너 뛸 건지
		int limit = pi.getBoardLimit();	// 총 몇개를 조회할건지
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("pnBoardMapper.selectList", null, rowBounds);	
	}
	
	
	// 동행관련 게시글추가
	public int insertPnBoard(SqlSessionTemplate sqlSession, PnBoard pb) {
		return sqlSession.insert("pnBoardMapper.insertPnBoard", pb);
	}
	
	
	// 동행 관련 조회수 증가
	public int increaseCount(SqlSessionTemplate sqlSession, int pnBoardNo) {
		return sqlSession.update("pnBoardMapper.increaseCount", pnBoardNo);
	}
	
	
	// 동행 관련 동행 조회
	public PnBoard selectPnBoard(SqlSessionTemplate sqlSession, int pnBoardNo) {
		return sqlSession.selectOne("pnBoardMapper.selectPnBoard", pnBoardNo);
	}
	
	
	// 동행 관련 동행 삭제
	public int deletePnBoard(SqlSessionTemplate sqlSession, int pnBoardNo) {
		return sqlSession.update("pnBoardMapper.deletePnBoard", pnBoardNo);
	}
	
	
	// 동행 관련 동행 수정
	public int updatePnBoard(SqlSessionTemplate sqlSession, PnBoard pb) {
		System.out.println("쿼리타기 전");
		return sqlSession.update("pnBoardMapper.updatePnBoard", pb);
	}
	
	
	// 동행 관련 댓글
	public ArrayList<Reply> selectPnReplyList(SqlSessionTemplate sqlSession, int postNo) {
		return (ArrayList)sqlSession.selectList("pnBoardMapper.selectPnReplyList", postNo);
	}
	
	// 동행 관련 댓글 추가
	public int insertPnReply(SqlSessionTemplate sqlSession, Reply pr) {
		return sqlSession.insert("pnBoardMapper.insertPnReply", pr);
	}
	
	public ArrayList<PnApply> selectApplyList(SqlSessionTemplate sqlSession,int pnBoardNo){
		return (ArrayList)sqlSession.selectList("pnBoardMapper.selectPnApply",pnBoardNo);
	}
	public int insertPnApply(SqlSessionTemplate sqlSession,PnApply pa) {
		return sqlSession.insert("pnBoardMapper.insertPnApply",pa);
	}
	
	public int updatePnApply(SqlSessionTemplate sqlSession,int memNo) {
		return sqlSession.update("pnBoardMapper.updatePnApply",memNo);
	}
	public int deletePnApply(SqlSessionTemplate sqlSession,int memNo) {
		return sqlSession.update("pnBoardMapper.deletePnApply",memNo);
	}
	
	public int openRoom(SqlSessionTemplate sqlSession,PnApply pa) {
		pa.setMemNickname(pa.getMemNickname()+"님의 방");
		return sqlSession.insert("pnBoardMapper.openRoom",pa);
	}
	public int openChat(SqlSessionTemplate sqlSession,PnApply pa) {
		return sqlSession.insert("pnBoardMapper.openChat",pa);
	}
	
}
































