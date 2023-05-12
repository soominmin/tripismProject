package com.kh.tripism.travelSpot.model.vo;

public class SpotCommon {
	private String contentid;
	private String contenttypeid;
	private String booktour;
	private String createdtime;
	private String homepage;
	private String modifiedtime;
	private String tel;
	private String telname;
	private String title;
	private String overview;
	
	public SpotCommon() {}

	public SpotCommon(String contentid, String contenttypeid, String booktour, String createdtime, String homepage,
			String modifiedtime, String tel, String telname, String title, String overview) {
		super();
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.booktour = booktour;
		this.createdtime = createdtime;
		this.homepage = homepage;
		this.modifiedtime = modifiedtime;
		this.tel = tel;
		this.telname = telname;
		this.title = title;
		this.overview = overview;
	}

	public String getContentid() {
		return contentid;
	}

	public void setContentid(String contentid) {
		this.contentid = contentid;
	}

	public String getContenttypeid() {
		return contenttypeid;
	}

	public void setContenttypeid(String contenttypeid) {
		this.contenttypeid = contenttypeid;
	}

	public String getBooktour() {
		return booktour;
	}

	public void setBooktour(String booktour) {
		this.booktour = booktour;
	}

	public String getCreatedtime() {
		return createdtime;
	}

	public void setCreatedtime(String createdtime) {
		this.createdtime = createdtime;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getModifiedtime() {
		return modifiedtime;
	}

	public void setModifiedtime(String modifiedtime) {
		this.modifiedtime = modifiedtime;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTelname() {
		return telname;
	}

	public void setTelname(String telname) {
		this.telname = telname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	@Override
	public String toString() {
		return "SpotCommon [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", booktour=" + booktour
				+ ", createdtime=" + createdtime + ", homepage=" + homepage + ", modifiedtime=" + modifiedtime
				+ ", tel=" + tel + ", telname=" + telname + ", title=" + title + ", overview=" + overview + "]";
	}
	
	
	

}
