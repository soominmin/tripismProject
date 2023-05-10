package com.kh.tripism.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.notice.model.vo.Notice;

@Repository
public class NoticeDao {
	
	public int noticeSelectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("noticeMapper.noticeSelectListCount");
	}
	
	public ArrayList<Notice> noticeSelectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		// 몇개의 게시글을 건너 뛸껀지
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		// 총 몇개를 조회해갈껀지
		int limit = pi.getBoardLimit();
		
		// System.out.println(offset + "hgjgg");
		// System.out.println(limit);
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("noticeMapper.noticeSelectList", null, rowBounds);
		
	}
	
	public int insertNotice(SqlSessionTemplate sqlSession, Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
	}
	
	public int increaseCount(SqlSessionTemplate sqlsession, int noticeNo) {
		return sqlsession.update("noticeMapper.increaseCount", noticeNo);
	}
	
	
	public Notice selectNotice(SqlSessionTemplate sqlSession, int noticeNo) {
		return sqlSession.selectOne("noticeMapper.selectNotice", noticeNo);
	}

}
