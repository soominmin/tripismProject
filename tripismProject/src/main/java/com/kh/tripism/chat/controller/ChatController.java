package com.kh.tripism.chat.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.tripism.chat.model.service.ChatService;
import com.kh.tripism.chat.model.service.ChatServiceImpl;
import com.kh.tripism.chat.model.vo.ChatMessage;
import com.kh.tripism.chat.model.vo.ChatRoom;
import com.kh.tripism.member.model.vo.Member;

@Controller
public class ChatController {
	
	@Autowired
	private ChatServiceImpl chService;
	
	@RequestMapping(value = "chatList.ch",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selectChatList(HttpSession session) {
		Member m = (Member)session.getAttribute("loginUser");
		
		if(m==null) {
			
			return new Gson().toJson("noLogin");
		}
		int memNo = m.getMemNo();
		
		ArrayList<ChatRoom> list = chService.selectChatList(memNo);
		
		return new Gson().toJson(list);
	}
	
	@RequestMapping(value = "messageList.ch",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selectMessageList(int chatRoomNo) {
		System.out.println(chatRoomNo);
		ArrayList<ChatMessage> messageList = chService.selectMessageList(chatRoomNo);
		System.out.println(messageList);
		return new Gson().toJson(messageList);
	}
}
