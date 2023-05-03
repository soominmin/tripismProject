package com.kh.tripism.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String nickName;
	private String emailString;
	private String gender;
	private String enrollDate;
	private String status;
	private String mbti;
}
