package com.kh.tripism.chat.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.chat.model.vo.ChatRoom;

@Repository
public class ChatDao {
	
	
	public ArrayList<ChatRoom> selectChatList(SqlSessionTemplate sqlSession,int memNo){
		
		return (ArrayList)sqlSession.selectList("chatMapper.chatList",memNo);
	}
	

}
