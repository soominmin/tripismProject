package com.kh.tripism.chat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.kh.tripism.chat.model.service.ChatServiceImpl;
import com.kh.tripism.chat.model.vo.ChatMessage;

import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class WebSocketHandler extends TextWebSocketHandler{
	
	private static List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	private static HashMap<String, Integer> chatRoomSessionList = new HashMap<String, Integer>();
	@Autowired
	private ObjectMapper mapper;
	@Autowired
	private ChatServiceImpl chService;
	@Override
	protected void handleTextMessage(WebSocketSession session,TextMessage message) throws Exception {
//		log.info(message.getPayload());
		String payload = message.getPayload();
		if(payload.getClass().getSimpleName().equals("String")) {
			log.info(payload);
			chatRoomSessionList.replace(session.getId(), Integer.parseInt(payload));
		}else {
			
			log.info("payload:" + payload);
			
			
			ChatMessage chatMessage = mapper.readValue(payload, ChatMessage.class);
			
			
			
			log.info(chatMessage.toString());
			
			
			
			for(WebSocketSession sess: sessionList) {
				if(chatRoomSessionList.get(sess.getId())==chatMessage.getChatroomNo()){
					
					sess.sendMessage(new TextMessage(new Gson().toJson(chatMessage)));
				}
			}
		}
		
		
		
		
		
	}
	
	@Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {

        sessionList.add(session);
        chatRoomSessionList.put(session.getId(), 0);
        log.info(session.getId() + " 웹소켓 세션아이디");
        log.info(session + " 클라이언트 접속");
        log.info(sessionList.toString());
    }
	@Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

        log.info(session + " 클라이언트 접속 해제");
        sessionList.remove(session);
        log.info(sessionList.toString());
    }
	
	
	

}
