package com.kh.tripism.chat.model.vo;



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
public class ChatMessege {
	private int messageNo; 
	private int chatroomNo;
	private int memNo;
	private String messageText;
	private String messageDate;

}
