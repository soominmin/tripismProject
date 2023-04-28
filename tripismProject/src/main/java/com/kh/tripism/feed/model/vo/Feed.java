package com.kh.tripism.feed.model.vo;

import java.sql.Date;

public class Feed {

	private int feedNo;
	private int memNo;
	private String feedTitle;
	private String feedContents;
	private Date feedDate;
	private Date feedModify;
	private String feedStatus;
	
	public Feed() {}

	public Feed(int feedNo, int memNo, String feedTitle, String feedContents, Date feedDate, Date feedModify,
			String feedStatus) {
		super();
		this.feedNo = feedNo;
		this.memNo = memNo;
		this.feedTitle = feedTitle;
		this.feedContents = feedContents;
		this.feedDate = feedDate;
		this.feedModify = feedModify;
		this.feedStatus = feedStatus;
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

	@Override
	public String toString() {
		return "Reply [feedNo=" + feedNo + ", memNo=" + memNo + ", feedTitle=" + feedTitle + ", feedContents="
				+ feedContents + ", feedDate=" + feedDate + ", feedModify=" + feedModify + ", feedStatus=" + feedStatus
				+ "]";
	}

	
}
