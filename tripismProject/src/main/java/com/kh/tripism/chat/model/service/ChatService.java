package com.kh.tripism.chat.model.service;

import java.util.ArrayList;

import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.kh.tripism.chat.model.vo.ChatMessage;
import com.kh.tripism.chat.model.vo.ChatRoom;

public interface ChatService {
	
	public ArrayList<ChatRoom> selectChatList(int memNo);
	
	public ArrayList<ChatMessage> selectMessageList(int chatRoomNo);
	
	public int insertMessage(ChatMessage chatMessage);
	
	public void testSocket(WebSocketSession session,TextMessage message) throws Exception;

}
