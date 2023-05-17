package com.kh.tripism.chat.model.service;

import java.util.ArrayList;

import com.kh.tripism.chat.model.vo.ChatMessage;
import com.kh.tripism.chat.model.vo.ChatRoom;

public interface ChatService {
	
	public ArrayList<ChatRoom> selectChatList(int memNo);
	
	public ArrayList<ChatMessage> selectMessageList(int chatRoomNo);
	
	public int insertMessage(ChatMessage chatMessage);

}
