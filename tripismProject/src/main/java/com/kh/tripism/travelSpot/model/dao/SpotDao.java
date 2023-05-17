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
	
	public ArrayList<Spot> selectSpotList(SqlSessionTemplate sqlSession, int currentPage, String sortVal){
		HashMap<String, Object> selectList = new HashMap<String, Object>();
		
		RowBounds rowBounds = new RowBounds((currentPage-1)*10,9);
		
		System.out.println(sortVal);
		
		if(sortVal == null || sortVal.equals("name")) {
			return (ArrayList)sqlSession.selectList("spotMapper.selectSpotList", selectList, rowBounds);
		}else if(sortVal.equals("like")) {
			return (ArrayList)sqlSession.selectList("spotMapper.selectSpotListByLike", selectList, rowBounds);
		}else {
			return (ArrayList)sqlSession.selectList("spotMapper.selectSpotListByView", selectList, rowBounds);
		}
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



	public int increaseCount(SqlSessionTemplate sqlSession, int contentId) {
		return sqlSession.update("spotMapper.increaseCount", contentId);
	}



	public ArrayList<Spot> searchSpotList(SqlSessionTemplate sqlSession, int currentPage, int spotContentType,
			int areaCategoryNo, int detail, String sortVal) {
		
		HashMap<String, Object> selectList = new HashMap<String, Object>();
		
		RowBounds rowBounds = new RowBounds((currentPage-1)*10,9);
		
		selectList.put("rowBounds", rowBounds);
		selectList.put("spotContentType", spotContentType);
		selectList.put("areaCategoryNo", areaCategoryNo);
		
		if(sortVal == null) {
			sortVal = "name";
		}
		
		switch (sortVal) {
			
//		case "null":
			
		case "name":
			
			if(spotContentType == 0 && areaCategoryNo != 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.searchSpotListArea", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType != 0) {

				return (ArrayList)sqlSession.selectList("spotMapper.searchSpotListType", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType == 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.searchSpotListAll", selectList, rowBounds);
			}
			else {
				if(detail == 1) {
					return (ArrayList)sqlSession.selectList("spotMapper.searchSpotListArea", selectList, rowBounds);
				}else {
					return (ArrayList)sqlSession.selectList("spotMapper.searchSpotList", selectList, rowBounds);
				}
			}
			
		case "like":
			
			if(spotContentType == 0 && areaCategoryNo != 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.spotListAreaByLike", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType != 0) {

				return (ArrayList)sqlSession.selectList("spotMapper.spotListTypeByLike", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType == 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.spotListAllByLike", selectList, rowBounds);
			}
			else {
				if(detail == 1) {
					return (ArrayList)sqlSession.selectList("spotMapper.spotListAreaByLike", selectList, rowBounds);
				}else {
					return (ArrayList)sqlSession.selectList("spotMapper.spotListByLike", selectList, rowBounds);
				}
			}
			
		case "view":
			
			if(spotContentType == 0 && areaCategoryNo != 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.spotListAreaByView", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType != 0) {

				return (ArrayList)sqlSession.selectList("spotMapper.spotListTypeByView", selectList, rowBounds);
			}
			else if(areaCategoryNo == 0 && spotContentType == 0) {
				return (ArrayList)sqlSession.selectList("spotMapper.spotListAllByView", selectList, rowBounds);
			}
			else {
				if(detail == 1) {
					return (ArrayList)sqlSession.selectList("spotMapper.spotListAreaByView", selectList, rowBounds);
				}else {
					return (ArrayList)sqlSession.selectList("spotMapper.spotListByView", selectList, rowBounds);
				}
			}
		
		default:
			return null;
		
		}

		
	}



	public int increaseLike(SqlSessionTemplate sqlSession, int contentId, int spotNo, int memNo) {
		
		HashMap<String, Object> updateList = new HashMap<String, Object>();
		
		updateList.put("contentId", contentId);
		updateList.put("spotNo", spotNo);
		updateList.put("memNo", memNo);
		
		int result = 0;
		
		result = sqlSession.update("spotMapper.increaseLike", updateList);
		
		result = sqlSession.insert("spotMapper.increaseLikeMember", updateList);
		
		return result;
		
	}






	
}
