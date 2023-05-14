package com.kh.tripism.travelPlan.chat;

import java.util.ArrayList;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;


import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class WebSocketHandler extends TextWebSocketHandler{
	
	private static ArrayList<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
	
	@Override
	protected void handleTextMessage(WebSocketSession session,TextMessage message) {
		String payload = message.getPayload();
		log.info("payload:" + payload);
		
		
	}

}
