package com.kh.tripism.feed.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

//@AllArgsConstructor
//@NoArgsConstructor
//@Setter
//@Getter
//@ToString


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
	private String keyword;
	
	public Feed() {}

	public Feed(int feedNo, int memNo, String feedTitle, String feedContents, Date feedDate, Date feedModify,
			String feedStatus, String originalName, String changeName, String memImg, String memNickname,
			String imgOriginalName1, String imgChangeName1, String imgOriginalName2, String imgChangeName2,
			String imgOriginalName3, String imgChangeName3, String imgOriginalName4, String imgChangeName4,
			String keyword) {
		super();
		this.feedNo = feedNo;
		this.memNo = memNo;
		this.feedTitle = feedTitle;
		this.feedContents = feedContents;
		this.feedDate = feedDate;
		this.feedModify = feedModify;
		this.feedStatus = feedStatus;
		this.originalName = originalName;
		this.changeName = changeName;
		this.memImg = memImg;
		this.memNickname = memNickname;
		this.imgOriginalName1 = imgOriginalName1;
		this.imgChangeName1 = imgChangeName1;
		this.imgOriginalName2 = imgOriginalName2;
		this.imgChangeName2 = imgChangeName2;
		this.imgOriginalName3 = imgOriginalName3;
		this.imgChangeName3 = imgChangeName3;
		this.imgOriginalName4 = imgOriginalName4;
		this.imgChangeName4 = imgChangeName4;
		this.keyword = keyword;
	}

	public int getFeedNo() {
		return feedNo;
	}

	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getFeedTitle() {
		return feedTitle;
	}

	public void setFeedTitle(String feedTitle) {
		this.feedTitle = feedTitle;
	}

	public String getFeedContents() {
		return feedContents;
	}

	public void setFeedContents(String feedContents) {
		this.feedContents = feedContents;
	}

	public Date getFeedDate() {
		return feedDate;
	}

	public void setFeedDate(Date feedDate) {
		this.feedDate = feedDate;
	}

	public Date getFeedModify() {
		return feedModify;
	}

	public void setFeedModify(Date feedModify) {
		this.feedModify = feedModify;
	}

	public String getFeedStatus() {
		return feedStatus;
	}

	public void setFeedStatus(String feedStatus) {
		this.feedStatus = feedStatus;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}

	public String getMemNickname() {
		return memNickname;
	}

	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}

	public String getImgOriginalName1() {
		return imgOriginalName1;
	}

	public void setImgOriginalName1(String imgOriginalName1) {
		this.imgOriginalName1 = imgOriginalName1;
	}

	public String getImgChangeName1() {
		return imgChangeName1;
	}

	public void setImgChangeName1(String imgChangeName1) {
		this.imgChangeName1 = imgChangeName1;
	}

	public String getImgOriginalName2() {
		return imgOriginalName2;
	}

	public void setImgOriginalName2(String imgOriginalName2) {
		this.imgOriginalName2 = imgOriginalName2;
	}

	public String getImgChangeName2() {
		return imgChangeName2;
	}

	public void setImgChangeName2(String imgChangeName2) {
		this.imgChangeName2 = imgChangeName2;
	}

	public String getImgOriginalName3() {
		return imgOriginalName3;
	}

	public void setImgOriginalName3(String imgOriginalName3) {
		this.imgOriginalName3 = imgOriginalName3;
	}

	public String getImgChangeName3() {
		return imgChangeName3;
	}

	public void setImgChangeName3(String imgChangeName3) {
		this.imgChangeName3 = imgChangeName3;
	}

	public String getImgOriginalName4() {
		return imgOriginalName4;
	}

	public void setImgOriginalName4(String imgOriginalName4) {
		this.imgOriginalName4 = imgOriginalName4;
	}

	public String getImgChangeName4() {
		return imgChangeName4;
	}

	public void setImgChangeName4(String imgChangeName4) {
		this.imgChangeName4 = imgChangeName4;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "Feed [feedNo=" + feedNo + ", memNo=" + memNo + ", feedTitle=" + feedTitle + ", feedContents="
				+ feedContents + ", feedDate=" + feedDate + ", feedModify=" + feedModify + ", feedStatus=" + feedStatus
				+ ", originalName=" + originalName + ", changeName=" + changeName + ", memImg=" + memImg
				+ ", memNickname=" + memNickname + ", imgOriginalName1=" + imgOriginalName1 + ", imgChangeName1="
				+ imgChangeName1 + ", imgOriginalName2=" + imgOriginalName2 + ", imgChangeName2=" + imgChangeName2
				+ ", imgOriginalName3=" + imgOriginalName3 + ", imgChangeName3=" + imgChangeName3
				+ ", imgOriginalName4=" + imgOriginalName4 + ", imgChangeName4=" + imgChangeName4 + ", keyword="
				+ keyword + "]";
	}
	
	

	
	
}
