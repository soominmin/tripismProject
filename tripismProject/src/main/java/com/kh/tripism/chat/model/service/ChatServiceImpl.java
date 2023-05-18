package com.kh.tripism.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.tripism.chat.model.dao.ChatDao;
import com.kh.tripism.chat.model.vo.ChatMessage;
import com.kh.tripism.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDao chDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ObjectMapper mapper;
	
	
	@Override
	public ArrayList<ChatRoom> selectChatList(int memNo) {
		
		return chDao.selectChatList(sqlSession,memNo);
	}


	@Override
	public ArrayList<ChatMessage> selectMessageList(int chatRoomNo) {
		return chDao.selectMessageList(sqlSession,chatRoomNo);
	}


	@Override
	public int insertMessage(ChatMessage chatMessage) {
		return chDao.insertMessage(sqlSession,chatMessage);
		
	}
	public void testSocket(WebSocketSession session,TextMessage message) throws Exception {
		System.out.println(message);
		String payload = message.getPayload();
		if(!(payload.substring(0, 1).equals("{"))) {
			System.out.println("챗서비스 페이로드:"+payload);
//			chatRoomSessionList.replace(session.getId(), Integer.parseInt(payload));
		}else {
			
			
			
			
			ChatMessage chatMessage = mapper.readValue(payload, ChatMessage.class);
			
			
			
			System.out.println("메세지클래스 :" + chatMessage);
			 
			
			
//			for(WebSocketSession sess: sessionList) {
//				if(chatRoomSessionList.get(sess.getId())==chatMessage.getChatroomNo()){
//					
//					sess.sendMessage(new TextMessage(new Gson().toJson(chatMessage)));
//				}
//			}
		}
	}
	
	
	

}
