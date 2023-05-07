package com.kh.tripism.notice.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString

public class Notice {
	
	private int noticeNo;
	private int noticeWriter;
	private String noticeName;
	private String noticeContent;
	private String noticeDate;
	private String noticeStatus;
	

}
