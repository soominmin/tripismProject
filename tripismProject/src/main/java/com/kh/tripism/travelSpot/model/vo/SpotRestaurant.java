package com.kh.tripism.travelSpot.model.vo;

public class SpotRestaurant {
	
	private String contentid;			//콘텐츠ID
	private String contenttypeid;		//콘텐츠타입ID
	private String chkcreditcardfood;	//신용카드가능정보
	private String discountinfofood;	//할인정보
	private String firstmenu;			//대표메뉴
	private String infocenterfood;		//문의및안내
	private String kidsfacility;		//어린이놀이방여부
	private String opendatefood;		//개업일
	private String opentimefood;		//영업시간
	private String packing;				//포장가능
	private String parkingfood;			//주차시설
	private String reservationfood;		//예약안내
	private String restdatefood;		//쉬는날
	private String scalefood;			//규모
	private String seat;				//좌석수
	private String smoking;				//금연/흡연여부
	private String treatmenu;			//취급메뉴
	private String lcnsno;				//인허가번호
	
	public SpotRestaurant() {}

	public SpotRestaurant(String contentid, String contenttypeid, String chkcreditcardfood, String discountinfofood,
			String firstmenu, String infocenterfood, String kidsfacility, String opendatefood, String opentimefood,
			String packing, String parkingfood, String reservationfood, String restdatefood, String scalefood,
			String seat, String smoking, String treatmenu, String lcnsno) {
		super();
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.chkcreditcardfood = chkcreditcardfood;
		this.discountinfofood = discountinfofood;
		this.firstmenu = firstmenu;
		this.infocenterfood = infocenterfood;
		this.kidsfacility = kidsfacility;
		this.opendatefood = opendatefood;
		this.opentimefood = opentimefood;
		this.packing = packing;
		this.parkingfood = parkingfood;
		this.reservationfood = reservationfood;
		this.restdatefood = restdatefood;
		this.scalefood = scalefood;
		this.seat = seat;
		this.smoking = smoking;
		this.treatmenu = treatmenu;
		this.lcnsno = lcnsno;
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

	public String getChkcreditcardfood() {
		return chkcreditcardfood;
	}

	public void setChkcreditcardfood(String chkcreditcardfood) {
		this.chkcreditcardfood = chkcreditcardfood;
	}

	public String getDiscountinfofood() {
		return discountinfofood;
	}

	public void setDiscountinfofood(String discountinfofood) {
		this.discountinfofood = discountinfofood;
	}

	public String getFirstmenu() {
		return firstmenu;
	}

	public void setFirstmenu(String firstmenu) {
		this.firstmenu = firstmenu;
	}

	public String getInfocenterfood() {
		return infocenterfood;
	}

	public void setInfocenterfood(String infocenterfood) {
		this.infocenterfood = infocenterfood;
	}

	public String getKidsfacility() {
		return kidsfacility;
	}

	public void setKidsfacility(String kidsfacility) {
		this.kidsfacility = kidsfacility;
	}

	public String getOpendatefood() {
		return opendatefood;
	}

	public void setOpendatefood(String opendatefood) {
		this.opendatefood = opendatefood;
	}

	public String getOpentimefood() {
		return opentimefood;
	}

	public void setOpentimefood(String opentimefood) {
		this.opentimefood = opentimefood;
	}

	public String getPacking() {
		return packing;
	}

	public void setPacking(String packing) {
		this.packing = packing;
	}

	public String getParkingfood() {
		return parkingfood;
	}

	public void setParkingfood(String parkingfood) {
		this.parkingfood = parkingfood;
	}

	public String getReservationfood() {
		return reservationfood;
	}

	public void setReservationfood(String reservationfood) {
		this.reservationfood = reservationfood;
	}

	public String getRestdatefood() {
		return restdatefood;
	}

	public void setRestdatefood(String restdatefood) {
		this.restdatefood = restdatefood;
	}

	public String getScalefood() {
		return scalefood;
	}

	public void setScalefood(String scalefood) {
		this.scalefood = scalefood;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getSmoking() {
		return smoking;
	}

	public void setSmoking(String smoking) {
		this.smoking = smoking;
	}

	public String getTreatmenu() {
		return treatmenu;
	}

	public void setTreatmenu(String treatmenu) {
		this.treatmenu = treatmenu;
	}

	public String getLcnsno() {
		return lcnsno;
	}

	public void setLcnsno(String lcnsno) {
		this.lcnsno = lcnsno;
	}

	@Override
	public String toString() {
		return "SpotRestaurant [contentid=" + contentid + ", contenttypeid=" + contenttypeid + ", chkcreditcardfood="
				+ chkcreditcardfood + ", discountinfofood=" + discountinfofood + ", firstmenu=" + firstmenu
				+ ", infocenterfood=" + infocenterfood + ", kidsfacility=" + kidsfacility + ", opendatefood="
				+ opendatefood + ", opentimefood=" + opentimefood + ", packing=" + packing + ", parkingfood="
				+ parkingfood + ", reservationfood=" + reservationfood + ", restdatefood=" + restdatefood
				+ ", scalefood=" + scalefood + ", seat=" + seat + ", smoking=" + smoking + ", treatmenu=" + treatmenu
				+ ", lcnsno=" + lcnsno + "]";
	}
	
	
	

}
