package com.kh.tripism.travelSpot.model.vo;

public class SpotImage {
	private String contentid;		//콘텐츠ID
	private String imgname;			//이미지명
	private String originimgurl;	//원본이미지
	private String serialnum;		//이미지일련번호
	private String cpyrhtDivCd;		//저작권 유형
	private String smallimageurl;	//썸네일이미지
	
	public SpotImage() {}

	public SpotImage(String contentid, String imgname, String originimgurl, String serialnum, String cpyrhtDivCd,
			String smallimageurl) {
		super();
		this.contentid = contentid;
		this.imgname = imgname;
		this.originimgurl = originimgurl;
		this.serialnum = serialnum;
		this.cpyrhtDivCd = cpyrhtDivCd;
		this.smallimageurl = smallimageurl;
	}

	public String getContentid() {
		return contentid;
	}

	public void setContentid(String contentid) {
		this.contentid = contentid;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	public String getOriginimgurl() {
		return originimgurl;
	}

	public void setOriginimgurl(String originimgurl) {
		this.originimgurl = originimgurl;
	}

	public String getSerialnum() {
		return serialnum;
	}

	public void setSerialnum(String serialnum) {
		this.serialnum = serialnum;
	}

	public String getCpyrhtDivCd() {
		return cpyrhtDivCd;
	}

	public void setCpyrhtDivCd(String cpyrhtDivCd) {
		this.cpyrhtDivCd = cpyrhtDivCd;
	}

	public String getSmallimageurl() {
		return smallimageurl;
	}

	public void setSmallimageurl(String smallimageurl) {
		this.smallimageurl = smallimageurl;
	}

	@Override
	public String toString() {
		return "SpotImage [contentid=" + contentid + ", imgname=" + imgname + ", originimgurl=" + originimgurl
				+ ", serialnum=" + serialnum + ", cpyrhtDivCd=" + cpyrhtDivCd + ", smallimageurl=" + smallimageurl
				+ "]";
	}
	
	

}
