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
	private String memImg;
	private String memNickname;
	private String imgOriginalName1;
	private String imgChangeName1;
	private String imgOriginalName2;
	private String imgChangeName2;
	private String imgOriginalName3;
	private String imgChangeName3;
	private String imgOriginalName4;
	private String imgChangeName4;
	

	
}
