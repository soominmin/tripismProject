package com.kh.tripism.travelSpot.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.travelSpot.model.vo.Spot;

@Repository
public class SpotDao {
	
	public ArrayList<Spot> selectSpotList(SqlSessionTemplate sqlSession, int currentPage){
		HashMap<String, Object> selectList = new HashMap<String, Object>();
		
		RowBounds rowBounds = new RowBounds((currentPage-1)*10,6);
		
		return (ArrayList)sqlSession.selectList("spotMapper.selectSpotList", selectList, rowBounds);
	}
	
}
