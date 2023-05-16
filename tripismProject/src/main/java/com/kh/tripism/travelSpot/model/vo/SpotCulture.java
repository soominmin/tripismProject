package com.kh.tripism.travelSpot.model.vo;

public class SpotCulture {
	private String contentid;			//콘텐츠id
	private String contenttypeid;			//콘텐츠타입
	private String accomcountculture;		//수용인원
	private String chkbabycarriageculture;	//유모차대여정보
	private String chkcreditcardculture;	//신용카드가능정보
	private String chkpetculture;			//애완동물동반가능정보
	private String discountinfo;			//할인정보
	private String infocenterculture;		//문의및안내
	private String parkingculture;			//주차시설
	private String parkingfee;				//주차요금
	private String restdateculture;			//쉬는날
	private String usefee;					//이용요금
	private String usetimeculture;			//이용시간
	private String scale;					//규모
	private String spendtime;				//관람소요시간
	
	public SpotCulture () {}

	public SpotCulture(String contentid, String contenttypeid, String accomcountculture, String chkbabycarriageculture,
			String chkcreditcardculture, String chkpetculture, String discountinfo, String infocenterculture,
			String parkingculture, String parkingfee, String restdateculture, String usefee, String usetimeculture,
			String scale, String spendtime) {
		super();
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.accomcountculture = accomcountculture;
		this.chkbabycarriageculture = chkbabycarriageculture;
		this.chkcreditcardculture = chkcreditcardculture;
		this.chkpetculture = chkpetculture;
		this.discountinfo = discountinfo;
		this.infocenterculture = infocenterculture;
		this.parkingculture = parkingculture;
		this.parkingfee = parkingfee;
		this.restdateculture = restdateculture;
		this.usefee = usefee;
		this.usetimeculture = usetimeculture;
		this.scale = scale;
		this.spendtime = spendtime;
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

	public String getAccomcountculture() {
		return accomcountculture;
	}

	public void setAccomcountculture(String accomcountculture) {
		this.accomcountculture = accomcountculture;
	}

	public String getChkbabycarriageculture() {
		return chkbabycarriageculture;
	}

	public void setChkbabycarriageculture(String chkbabycarriageculture) {
		this.chkbabycarriageculture = chkbabycarriageculture;
	}

	public String getChkcreditcardculture() {
		return chkcreditcardculture;
	}

	public void setChkcreditcardculture(String chkcreditcardculture) {
		this.chkcreditcardculture = chkcreditcardculture;
	}

	public String getChkpetculture() {
		return chkpetculture;
	}

	public void setChkpetculture(String chkpetculture) {
		this.chkpetculture = chkpetculture;
	}

	public String getDiscountinfo() {
		return discountinfo;
	}

	public void setDiscountinfo(String discountinfo) {
		this.discountinfo = discountinfo;
	}

	public String getInfocenterculture() {
		return infocenterculture;
	}

	public void setInfocenterculture(String infocenterculture) {
		this.infocenterculture = infocenterculture;
	}

	public String getParkingculture() {
		return parkingculture;
	}

	public void setParkingculture(String parkingculture) {
		this.parkingculture = parkingculture;
	}

	public String getParkingfee() {
		return parkingfee;
	}

	public void setParkingfee(String parkingfee) {
		this.parkingfee = parkingfee;
	}

	public String getRestdateculture() {
		return restdateculture;
	}

	public void setRestdateculture(String restdateculture) {
		this.restdateculture = restdateculture;
	}

	public String getUsefee() {
		return usefee;
	}

	public void setUsefee(String usefee) {
		this.usefee = usefee;
	}

	public String getUsetimeculture() {
		return usetimeculture;
	}

	public void setUsetimeculture(String usetimeculture) {
		this.usetimeculture = usetimeculture;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getSpendtime() {
		return spendtime;
	}

	public void setSpendtime(String spendtime) {
		this.spendtime = spendtime;
	}

	@Override
	public String toString() {
		return "SpotCulture [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", accomcountculture="
				+ accomcountculture + ", chkbabycarriageculture=" + chkbabycarriageculture + ", chkcreditcardculture="
				+ chkcreditcardculture + ", chkpetculture=" + chkpetculture + ", discountinfo=" + discountinfo
				+ ", infocenterculture=" + infocenterculture + ", parkingculture=" + parkingculture + ", parkingfee="
				+ parkingfee + ", restdateculture=" + restdateculture + ", usefee=" + usefee + ", usetimeculture="
				+ usetimeculture + ", scale=" + scale + ", spendtime=" + spendtime + "]";
	}
	
	
	
	
	
	
	
	

}
