package com.kh.tripism.feed.model.vo;

public class Img {

	private int imgNo;
	private int feedNo;
	private String imgOriginName;
	private String imgChangeName;
	
	public Img() {}

	public Img(int imgNo, int feedNo, String imgOriginName, String imgChangeName) {
		super();
		this.imgNo = imgNo;
		this.feedNo = feedNo;
		this.imgOriginName = imgOriginName;
		this.imgChangeName = imgChangeName;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getFeedNo() {
		return feedNo;
	}

	public void setFeedNo(int feedNo) {
		this.feedNo = feedNo;
	}

	public String getImgOriginName() {
		return imgOriginName;
	}

	public void setImgOriginName(String imgOriginName) {
		this.imgOriginName = imgOriginName;
	}

	public String getImgChangeName() {
		return imgChangeName;
	}

	public void setImgChangeName(String imgChangeName) {
		this.imgChangeName = imgChangeName;
	}

	@Override
	public String toString() {
		return "Img [imgNo=" + imgNo + ", feedNo=" + feedNo + ", imgOriginName=" + imgOriginName + ", imgChangeName="
				+ imgChangeName + "]";
	}
	
	
}
