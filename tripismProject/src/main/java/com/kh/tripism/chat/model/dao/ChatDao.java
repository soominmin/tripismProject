package com.kh.tripism.chat.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.tripism.chat.model.vo.ChatMessage;
import com.kh.tripism.chat.model.vo.ChatRoom;

@Repository
public class ChatDao {
	
	
	public ArrayList<ChatRoom> selectChatList(SqlSessionTemplate sqlSession,int memNo){
		
		return (ArrayList)sqlSession.selectList("chatMapper.chatList",memNo);
	}
	
	public ArrayList<ChatMessage> selectMessageList(SqlSessionTemplate sqlSession, int chatRoomNo){
		
		return (ArrayList)sqlSession.selectList("chatMapper.selectMessageList",chatRoomNo);
	}
	public int insertMessage(SqlSessionTemplate sqlSession,ChatMessage chatMessage) {
		return (int)sqlSession.insert("chatMapper.insertMessage",chatMessage);
	}
	

}
