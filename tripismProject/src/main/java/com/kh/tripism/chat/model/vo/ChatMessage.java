package com.kh.tripism.chat.model.vo;



import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Builder
@JsonIgnoreProperties(ignoreUnknown = true)
public class ChatMessage {
	private int messageNo; 
	private int chatroomNo;
	private String memNickname;
	private String messageText;
	private String messageDate;
	private int memNo;
	

}
