package com.kh.tripism.feed.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@Setter
@Getter
@ToString

public class Feed {

	private int feedNo;
	private int memNo;
	private String feedTitle;
	private String feedContents;
	private Date feedDate;
	private Date feedModify;
	private String feedStatus;
	private String originalName;
	private String changeName;
	

	
}
