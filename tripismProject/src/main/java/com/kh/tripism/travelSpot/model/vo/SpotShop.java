package com.kh.tripism.travelSpot.model.vo;

public class SpotShop {
	private String chkbabycarriageshopping;	//유모차대여정보
	private String chkcreditcardshopping;	//신용카드가능정보
	private String chkpetshopping;			//애완동물동반가능정보
	private String culturecenter;			//문화센터바로가기
	private String fairday;					//장서는날
	private String infocentershopping;		//문의및안내
	private String opendateshopping;		//개장일
	private String opentime;				//영업시간
	private String parkingshopping;			//주차시설
	private String restdateshopping;		//쉬는날
	private String restroom;				//화장실설명
	private String saleitem;				//판매품목
	private String saleitemcost;			//판매품목별가격
	private String scaleshopping;			//규모
	private String shopguide;				//매장안내
	
	public SpotShop() {}

	public SpotShop(String chkbabycarriageshopping, String chkcreditcardshopping, String chkpetshopping,
			String culturecenter, String fairday, String infocentershopping, String opendateshopping, String opentime,
			String parkingshopping, String restdateshopping, String restroom, String saleitem, String saleitemcost,
			String scaleshopping, String shopguide) {
		super();
		this.chkbabycarriageshopping = chkbabycarriageshopping;
		this.chkcreditcardshopping = chkcreditcardshopping;
		this.chkpetshopping = chkpetshopping;
		this.culturecenter = culturecenter;
		this.fairday = fairday;
		this.infocentershopping = infocentershopping;
		this.opendateshopping = opendateshopping;
		this.opentime = opentime;
		this.parkingshopping = parkingshopping;
		this.restdateshopping = restdateshopping;
		this.restroom = restroom;
		this.saleitem = saleitem;
		this.saleitemcost = saleitemcost;
		this.scaleshopping = scaleshopping;
		this.shopguide = shopguide;
	}

	public String getChkbabycarriageshopping() {
		return chkbabycarriageshopping;
	}

	public void setChkbabycarriageshopping(String chkbabycarriageshopping) {
		this.chkbabycarriageshopping = chkbabycarriageshopping;
	}

	public String getChkcreditcardshopping() {
		return chkcreditcardshopping;
	}

	public void setChkcreditcardshopping(String chkcreditcardshopping) {
		this.chkcreditcardshopping = chkcreditcardshopping;
	}

	public String getChkpetshopping() {
		return chkpetshopping;
	}

	public void setChkpetshopping(String chkpetshopping) {
		this.chkpetshopping = chkpetshopping;
	}

	public String getCulturecenter() {
		return culturecenter;
	}

	public void setCulturecenter(String culturecenter) {
		this.culturecenter = culturecenter;
	}

	public String getFairday() {
		return fairday;
	}

	public void setFairday(String fairday) {
		this.fairday = fairday;
	}

	public String getInfocentershopping() {
		return infocentershopping;
	}

	public void setInfocentershopping(String infocentershopping) {
		this.infocentershopping = infocentershopping;
	}

	public String getOpendateshopping() {
		return opendateshopping;
	}

	public void setOpendateshopping(String opendateshopping) {
		this.opendateshopping = opendateshopping;
	}

	public String getOpentime() {
		return opentime;
	}

	public void setOpentime(String opentime) {
		this.opentime = opentime;
	}

	public String getParkingshopping() {
		return parkingshopping;
	}

	public void setParkingshopping(String parkingshopping) {
		this.parkingshopping = parkingshopping;
	}

	public String getRestdateshopping() {
		return restdateshopping;
	}

	public void setRestdateshopping(String restdateshopping) {
		this.restdateshopping = restdateshopping;
	}

	public String getRestroom() {
		return restroom;
	}

	public void setRestroom(String restroom) {
		this.restroom = restroom;
	}

	public String getSaleitem() {
		return saleitem;
	}

	public void setSaleitem(String saleitem) {
		this.saleitem = saleitem;
	}

	public String getSaleitemcost() {
		return saleitemcost;
	}

	public void setSaleitemcost(String saleitemcost) {
		this.saleitemcost = saleitemcost;
	}

	public String getScaleshopping() {
		return scaleshopping;
	}

	public void setScaleshopping(String scaleshopping) {
		this.scaleshopping = scaleshopping;
	}

	public String getShopguide() {
		return shopguide;
	}

	public void setShopguide(String shopguide) {
		this.shopguide = shopguide;
	}

	@Override
	public String toString() {
		return "SpotShop [chkbabycarriageshopping=" + chkbabycarriageshopping + ", chkcreditcardshopping="
				+ chkcreditcardshopping + ", chkpetshopping=" + chkpetshopping + ", culturecenter=" + culturecenter
				+ ", fairday=" + fairday + ", infocentershopping=" + infocentershopping + ", opendateshopping="
				+ opendateshopping + ", opentime=" + opentime + ", parkingshopping=" + parkingshopping
				+ ", restdateshopping=" + restdateshopping + ", restroom=" + restroom + ", saleitem=" + saleitem
				+ ", saleitemcost=" + saleitemcost + ", scaleshopping=" + scaleshopping + ", shopguide=" + shopguide
				+ "]";
	}
	
	
	

}
