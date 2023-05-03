package com.kh.tripism.travelPlan.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.travelPlan.model.vo.Tour;

@Repository
public class PlanDao {
	
	public int insertTour(SqlSessionTemplate sqlSession,Tour t) {
//		System.out.println("이건 다오에서 찍음 : " + t);
		return sqlSession.insert("planMapper.insertTour",t);
	}

}
