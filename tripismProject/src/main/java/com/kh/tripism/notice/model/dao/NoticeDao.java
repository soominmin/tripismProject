package com.kh.tripism.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.common.model.vo.PageInfo;
import com.kh.tripism.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.selectListCount");
		
	}
	
	public ArrayList<Notice> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// 몇개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		// 총 몇개를 조회해갈껀지
		int limit = pi.getBoardLimit();
		
		// System.out.println(offset + "hgjgg");
		// System.out.println(limit);
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList", null, rowBounds);
		
		
		
	}


}
