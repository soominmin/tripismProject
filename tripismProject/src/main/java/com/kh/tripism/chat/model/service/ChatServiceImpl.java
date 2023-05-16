package com.kh.tripism.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tripism.chat.model.dao.ChatDao;
import com.kh.tripism.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDao chDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public ArrayList<ChatRoom> selectChatList(int memNo) {
		
		return chDao.selectChatList(sqlSession,memNo);
	}
	
	
	

}
