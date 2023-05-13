package com.kh.tripism.travelSpot.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotTour;

@Repository
public class SpotDao {
	
	public ArrayList<Spot> selectSpotList(SqlSessionTemplate sqlSession, int currentPage){
		HashMap<String, Object> selectList = new HashMap<String, Object>();
		
		RowBounds rowBounds = new RowBounds((currentPage-1)*10,9);
		
		return (ArrayList)sqlSession.selectList("spotMapper.selectSpotList", selectList, rowBounds);
	}
	
	
	
	public Spot selectSpotDetail(SqlSessionTemplate sqlSession, int contentId) {
		return sqlSession.selectOne("spotMapper.selectSpotDetail",contentId);
	}



	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		return sqlSession.insert("spotMapper.insertReply", r);
	}



	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, int boardNo) {
		return (ArrayList)sqlSession.selectList("spotMapper.selectReplyList", boardNo);
	}
	
}
