package com.kh.tripism.feed.model.vo;

public class Img {

	private int feedImgNo;
	private int feedNo;
	private String imgOriginalName;
	private String imgChangeName;
	
	public Img() {}

	public Img(int feedImgNo, int feedNo, String imgOriginalName, String imgChangeName) {
		super();
		this.feedImgNo = feedImgNo;
		this.feedNo = feedNo;
		this.imgOriginalName = imgOriginalName;
		this.imgChangeName = imgChangeName;
	}

	public int getFeedImgNo() {
		return feedImgNo;
	}

	public void setFeedImgNo(int feedImgNo) {
		this.feedImgNo = feedImgNo;
	}

	public int getFeedNo() {
		return feedNo;
	}

	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}

	public String getImgOriginalName() {
		return imgOriginalName;
	}

	public void setImgOriginalName(String imgOriginalName) {
		this.imgOriginalName = imgOriginalName;
	}

	public String getImgChangeName() {
		return imgChangeName;
	}

	public void setImgChangeName(String imgChangeName) {
		this.imgChangeName = imgChangeName;
	}

	@Override
	public String toString() {
		return "Img [feedImgNo=" + feedImgNo + ", feedNo=" + feedNo + ", imgOriginalName=" + imgOriginalName
				+ ", imgChangeName=" + imgChangeName + "]";
	}
	
	
}
