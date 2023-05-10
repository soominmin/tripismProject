package com.kh.tripism.travelSpot.model.vo;

public class Spot {
	private int spotNo; 
	private String spotContentId;
	private String spotContentType;
	private String spotCreateDate;
	private String spotModifiedDate; 
	private String spotTel;
	private String spotTitle; 
	private String spotImgPath; 
	private String spotAddress; 
	private String spotPostalCode;
	private String spotMapx; 
	private String spotMapy; 
	private String largeCategoryNo; 
	private String middleCategoryNo; 
	private String smallCategoryNo; 
	private String areaCategoryNo;
	private String cityCategoryNo;
	private int spotCount;
	private int spotLike;
	
	private String areaTitle;
	private String sigunguTitle;
	
	public Spot() {}

	public Spot(int spotNo, String spotContentId, String spotContentType, String spotCreateDate,
			String spotModifiedDate, String spotTel, String spotTitle, String spotImgPath, String spotAddress,
			String spotPostalCode, String spotMapx, String spotMapy, String largeCategoryNo, String middleCategoryNo,
			String smallCategoryNo, String areaCategoryNo, String cityCategoryNo, int spotCount, int spotLike,
			String areaTitle, String sigunguTitle) {
		super();
		this.spotNo = spotNo;
		this.spotContentId = spotContentId;
		this.spotContentType = spotContentType;
		this.spotCreateDate = spotCreateDate;
		this.spotModifiedDate = spotModifiedDate;
		this.spotTel = spotTel;
		this.spotTitle = spotTitle;
		this.spotImgPath = spotImgPath;
		this.spotAddress = spotAddress;
		this.spotPostalCode = spotPostalCode;
		this.spotMapx = spotMapx;
		this.spotMapy = spotMapy;
		this.largeCategoryNo = largeCategoryNo;
		this.middleCategoryNo = middleCategoryNo;
		this.smallCategoryNo = smallCategoryNo;
		this.areaCategoryNo = areaCategoryNo;
		this.cityCategoryNo = cityCategoryNo;
		this.spotCount = spotCount;
		this.spotLike = spotLike;
		this.areaTitle = areaTitle;
		this.sigunguTitle = sigunguTitle;
	}



	public int getSpotNo() {
		return spotNo;
	}

	public void setSpotNo(int spotNo) {
		this.spotNo = spotNo;
	}

	public String getSpotContentId() {
		return spotContentId;
	}

	public void setSpotContentId(String spotContentId) {
		this.spotContentId = spotContentId;
	}

	public String getSpotContentType() {
		return spotContentType;
	}

	public void setSpotContentType(String spotContentType) {
		this.spotContentType = spotContentType;
	}

	public String getSpotCreateDate() {
		return spotCreateDate;
	}

	public void setSpotCreateDate(String spotCreateDate) {
		this.spotCreateDate = spotCreateDate;
	}

	public String getSpotModifiedDate() {
		return spotModifiedDate;
	}

	public void setSpotModifiedDate(String spotModifiedDate) {
		this.spotModifiedDate = spotModifiedDate;
	}

	public String getSpotTel() {
		return spotTel;
	}

	public void setSpotTel(String spotTel) {
		this.spotTel = spotTel;
	}

	public String getSpotTitle() {
		return spotTitle;
	}

	public void setSpotTitle(String spotTitle) {
		this.spotTitle = spotTitle;
	}

	public String getSpotImgPath() {
		return spotImgPath;
	}

	public void setSpotImgPath(String spotImgPath) {
		this.spotImgPath = spotImgPath;
	}

	public String getSpotAddress() {
		return spotAddress;
	}

	public void setSpotAddress(String spotAddress) {
		this.spotAddress = spotAddress;
	}

	public String getSpotPostalCode() {
		return spotPostalCode;
	}

	public void setSpotPostalCode(String spotPostalCode) {
		this.spotPostalCode = spotPostalCode;
	}

	public String getSpotMapx() {
		return spotMapx;
	}

	public void setSpotMapx(String spotMapx) {
		this.spotMapx = spotMapx;
	}

	public String getSpotMapy() {
		return spotMapy;
	}

	public void setSpotMapy(String spotMapy) {
		this.spotMapy = spotMapy;
	}

	public String getLargeCategoryNo() {
		return largeCategoryNo;
	}

	public void setLargeCategoryNo(String largeCategoryNo) {
		this.largeCategoryNo = largeCategoryNo;
	}

	public String getMiddleCategoryNo() {
		return middleCategoryNo;
	}

	public void setMiddleCategoryNo(String middleCategoryNo) {
		this.middleCategoryNo = middleCategoryNo;
	}

	public String getSmallCategoryNo() {
		return smallCategoryNo;
	}

	public void setSmallCategoryNo(String smallCategoryNo) {
		this.smallCategoryNo = smallCategoryNo;
	}

	public String getAreaCategoryNo() {
		return areaCategoryNo;
	}

	public void setAreaCategoryNo(String areaCategoryNo) {
		this.areaCategoryNo = areaCategoryNo;
	}

	public int getSpotCount() {
		return spotCount;
	}

	public void setSpotCount(int spotCount) {
		this.spotCount = spotCount;
	}

	public int getSpotLike() {
		return spotLike;
	}

	public void setSpotLike(int spotLike) {
		this.spotLike = spotLike;
	}

	public String getCityCategoryNo() {
		return cityCategoryNo;
	}

	public void setCityCategoryNo(String cityCategoryNo) {
		this.cityCategoryNo = cityCategoryNo;
	}

	public String getAreaTitle() {
		return areaTitle;
	}

	public void setAreaTitle(String areaTitle) {
		this.areaTitle = areaTitle;
	}

	public String getSigunguTitle() {
		return sigunguTitle;
	}

	public void setSigunguTitle(String sigunguTitle) {
		this.sigunguTitle = sigunguTitle;
	}

	@Override
	public String toString() {
		return "Spot [spotNo=" + spotNo + ", spotContentId=" + spotContentId + ", spotContentType=" + spotContentType
				+ ", spotCreateDate=" + spotCreateDate + ", spotModifiedDate=" + spotModifiedDate + ", spotTel="
				+ spotTel + ", spotTitle=" + spotTitle + ", spotImgPath=" + spotImgPath + ", spotAddress=" + spotAddress
				+ ", spotPostalCode=" + spotPostalCode + ", spotMapx=" + spotMapx + ", spotMapy=" + spotMapy
				+ ", largeCategoryNo=" + largeCategoryNo + ", middleCategoryNo=" + middleCategoryNo
				+ ", smallCategoryNo=" + smallCategoryNo + ", areaCategoryNo=" + areaCategoryNo + ", cityCategoryNo="
				+ cityCategoryNo + ", spotCount=" + spotCount + ", spotLike=" + spotLike + ", areaTitle=" + areaTitle
				+ ", sigunguTitle=" + sigunguTitle + "]";
	}

	
}
