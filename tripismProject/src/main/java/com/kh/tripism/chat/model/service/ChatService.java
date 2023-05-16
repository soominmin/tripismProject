package com.kh.tripism.chat.model.service;

import java.util.ArrayList;

import com.kh.tripism.chat.model.vo.ChatRoom;

public interface ChatService {
	
	public ArrayList<ChatRoom> selectChatList(int memNo);

}
