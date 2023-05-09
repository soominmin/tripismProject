package com.kh.tripism.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.feed.model.vo.PageInfo;
import com.kh.tripism.notice.model.dao.NoticeDao;
import com.kh.tripism.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao nDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int noticeSelectListCount() {
		return nDao.noticeSelectListCount(sqlSession);
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return nDao.noticeSelectList(sqlSession, pi);
	}

	@Override
	public int insertNotice(Notice n) {
		return nDao.insertBoard(sqlSession, n);
	}


	@Override
	public Notice selectNotice(int noticeNo) {
		return nDao.selectNotice(sqlSession, noticeNo);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateNotice(Notice n) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Notice> selectTopNoticeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int increaseCount(int noticeNo) {
		return nDao.increaseCount(sqlSession, noticeNo);
	}

}
