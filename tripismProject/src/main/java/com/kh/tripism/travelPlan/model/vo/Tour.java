package com.kh.tripism.travelPlan.model.vo;


public class Tour {
	private int spotNo; 
	private int spotContentId;
	private String spotCreateDate;
	private String spotModifiedDate; 
	private String spotHomePage;
	private String spotTel;
	private String spotTitle; 
	private String spotImgPath; 
	private String spotAddress; 
	private String spotPostalCode;
	private String spotMapx; 
	private String spotMapy; 
	private String spotOverview; 
	private String largeCategoryNo; 
	private String middleCategoryNo; 
	private String smallCategoryNo; 
	private String areaCategoryNo; 
	private String cityCategoryNo; 
	private int spotCount;
	
	public Tour() {}

	public Tour(int spotNo, int spotContentId, String spotCreateDate, String spotModifiedDate, String spotHomePage,
			String spotTel, String spotTitle, String spotImgPath, String spotAddress, String spotPostalCode,
			String spotMapx, String spotMapy, String spotOverview, String largeCategoryNo, String middleCategoryNo,
			String smallCategoryNo, String areaCategoryNo, String cityCategoryNo, int spotCount) {
		super();
		this.spotNo = spotNo;
		this.spotContentId = spotContentId;
		this.spotCreateDate = spotCreateDate;
		this.spotModifiedDate = spotModifiedDate;
		this.spotHomePage = spotHomePage;
		this.spotTel = spotTel;
		this.spotTitle = spotTitle;
		this.spotImgPath = spotImgPath;
		this.spotAddress = spotAddress;
		this.spotPostalCode = spotPostalCode;
		this.spotMapx = spotMapx;
		this.spotMapy = spotMapy;
		this.spotOverview = spotOverview;
		this.largeCategoryNo = largeCategoryNo;
		this.middleCategoryNo = middleCategoryNo;
		this.smallCategoryNo = smallCategoryNo;
		this.areaCategoryNo = areaCategoryNo;
		this.cityCategoryNo = cityCategoryNo;
		this.spotCount = spotCount;
	}

	public int getSpotNo() {
		return spotNo;
	}

	public void setSpotNo(int spotNo) {
		this.spotNo = spotNo;
	}

	public int getSpotContentId() {
		return spotContentId;
	}

	public void setSpotContentId(int spotContentId) {
		this.spotContentId = spotContentId;
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

	public String getSpotHomePage() {
		return spotHomePage;
	}

	public void setSpotHomePage(String spotHomePage) {
		this.spotHomePage = spotHomePage;
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

	public String getSpotOverview() {
		return spotOverview;
	}

	public void setSpotOverview(String spotOverview) {
		this.spotOverview = spotOverview;
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

	public String getCityCategoryNo() {
		return cityCategoryNo;
	}

	public void setCityCategoryNo(String cityCategoryNo) {
		this.cityCategoryNo = cityCategoryNo;
	}

	public int getSpotCount() {
		return spotCount;
	}

	public void setSpotCount(int spotCount) {
		this.spotCount = spotCount;
	}

	@Override
	public String toString() {
		return "Tour [spotNo=" + spotNo + ", spotContentId=" + spotContentId + ", spotCreateDate=" + spotCreateDate
				+ ", spotModifiedDate=" + spotModifiedDate + ", spotHomePage=" + spotHomePage + ", spotTel=" + spotTel
				+ ", spotTitle=" + spotTitle + ", spotImgPath=" + spotImgPath + ", spotAddress=" + spotAddress
				+ ", spotPostalCode=" + spotPostalCode + ", spotMapx=" + spotMapx + ", spotMapy=" + spotMapy
				+ ", spotOverview=" + spotOverview + ", largeCategoryNo=" + largeCategoryNo + ", middleCategoryNo="
				+ middleCategoryNo + ", smallCategoryNo=" + smallCategoryNo + ", areaCategoryNo=" + areaCategoryNo
				+ ", cityCategoryNo=" + cityCategoryNo + ", spotCount=" + spotCount + "]";
	}
	
	

	
	
	

}
