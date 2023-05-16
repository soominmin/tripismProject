package com.kh.tripism.travelSpot.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.tripism.common.vo.Reply;
import com.kh.tripism.travelSpot.model.service.SpotServiceImpl;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotCommon;
import com.kh.tripism.travelSpot.model.vo.SpotCulture;
import com.kh.tripism.travelSpot.model.vo.SpotFestival;
import com.kh.tripism.travelSpot.model.vo.SpotHotel;
import com.kh.tripism.travelSpot.model.vo.SpotImage;
import com.kh.tripism.travelSpot.model.vo.SpotLeports;
import com.kh.tripism.travelSpot.model.vo.SpotRestaurant;
import com.kh.tripism.travelSpot.model.vo.SpotShop;
import com.kh.tripism.travelSpot.model.vo.SpotTour;



@Controller
public class travelSpotController {
	
   // tour인증키 (decoding)
   public static final String servicekey = "u9lAqyYrK8iachVY9sMwUjf8FtH2nvjt12sjx49m0zQmTIxRVdo4%2Bipmg6rjE6d4VkjeRNFe3pXYFVRiCLumBg%3D%3D";
   
	
	@Autowired
	private SpotServiceImpl sService;
	
	@RequestMapping("list.sp")
	public String selectList() {
		return "travelSpot/travelSpotListView";
	}
	
	@RequestMapping(value="detailAPI.sp", produces = "application/json; charset=utf-8")
	public String selectSpotAPI(int contentId, int contentType, Model model) throws IOException {
		
		// 조회수 증가
		
		int result = sService.increaseCount(contentId);
		
		if(result > 0) {
			
			// api소개정보 조회
			System.out.println("selectSpotAPI 탐");
			
	        String url = "http://apis.data.go.kr/B551011/KorService1/detailIntro1";
	        url +="?MobileOS=etc&MobileApp=tripism&_type=json&contentId="+contentId+"&contentTypeId="+contentType+"&numOfRows=1&pageNo=1&serviceKey="+servicekey;
	        
	        System.out.println("url : " + url);

			URL requestUrl = new URL(url);
			
			// 2. 1번 과정으로 생성된 URL 객체 가지고 HttpURLConnection 객체 생성
			HttpURLConnection urlConnection = (HttpURLConnection)requestUrl.openConnection();
			
			// 3. 요청에 필요한 Header 설정하기
			urlConnection.setRequestMethod("GET");
			
			// 4. 해당 OpenAPI 서버로 요청 보낸 후 입력 스트림을 통해 응답데이터 읽어들이기
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
			
			String line;
			String responseText = "";
			
			while((line = br.readLine())!= null) {
				System.out.println(line);
				responseText += line;
			}
			

//			System.out.println("responseText"+responseText);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(responseText);
			JsonObject responseObj = element.getAsJsonObject().get("response").getAsJsonObject();
			JsonObject bodyObj = responseObj.getAsJsonObject().get("body").getAsJsonObject();
			JsonObject items = bodyObj.getAsJsonObject().get("items").getAsJsonObject();
			
			System.out.println(responseObj);
			System.out.println(bodyObj);
			System.out.println(items);
			
//			JsonArray itemArr = bodyObj.getAsJsonArray("items");
			
			
//			System.out.println(itemArr);
//			System.out.println(itemArr.size());
//			System.out.println((String)items.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject().get("contentid").getAsString());
//			System.out.println(items.size());
			
			
			ArrayList<SpotTour> apiList = new ArrayList<>();
			ArrayList<SpotCulture> apiListC = new ArrayList<>();
			ArrayList<SpotFestival> apiListF = new ArrayList<>();
			ArrayList<SpotLeports> apiListL = new ArrayList<>();
			ArrayList<SpotHotel> apiListH = new ArrayList<>();
			ArrayList<SpotShop> apiListS = new ArrayList<>();
			ArrayList<SpotRestaurant> apiListR = new ArrayList<>();
			
			if(contentType == 12) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					SpotTour tour = new SpotTour();
					
					tour.setContentid(item.get("contentid").getAsString());
					tour.setContenttypeid(item.get("contenttypeid").getAsString());
					tour.setAccomcount(item.get("accomcount").getAsString());
					tour.setChkbabycarriage(item.get("chkbabycarriage").getAsString());
					tour.setChkcreditcard(item.get("chkcreditcard").getAsString());
					tour.setChkpet(item.get("chkpet").getAsString());
					tour.setExpagerange(item.get("expagerange").getAsString());
					tour.setExpguide(item.get("expguide").getAsString());
					tour.setHeritage1(item.get("heritage1").getAsString());
					tour.setHeritage2(item.get("heritage2").getAsString());
					tour.setHeritage3(item.get("heritage3").getAsString());
					tour.setInfocenter(item.get("infocenter").getAsString());
					tour.setOpendate(item.get("opendate").getAsString());
					tour.setParking(item.get("parking").getAsString());
					tour.setRestdate(item.get("restdate").getAsString());
					tour.setUseseason(item.get("useseason").getAsString());
					tour.setUsetime(item.get("usetime").getAsString());
					
					apiList.add(tour);
				
				}
			}
			else if(contentType == 14) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					SpotCulture culture = new SpotCulture();
					
					culture.setContentid(item.get("contentid").getAsString());
					culture.setContenttypeid(item.get("contenttypeid").getAsString());
					culture.setAccomcountculture(item.get("accomcountculture").getAsString());
					culture.setChkbabycarriageculture(item.get("chkbabycarriageculture").getAsString());
					culture.setChkcreditcardculture(item.get("chkcreditcardculture").getAsString());
					culture.setDiscountinfo(item.get("chkpetculture").getAsString());
					culture.setInfocenterculture(item.get("discountinfo").getAsString());
					culture.setParkingculture(item.get("infocenterculture").getAsString());
					culture.setParkingfee(item.get("parkingfee").getAsString());
					culture.setRestdateculture(item.get("restdateculture").getAsString());
					culture.setUsefee(item.get("usefee").getAsString());
					culture.setUsetimeculture(item.get("usetimeculture").getAsString());
					culture.setScale(item.get("scale").getAsString());
					culture.setSpendtime(item.get("spendtime").getAsString());
					
					apiListC.add(culture);
				
				}
			}
			else if(contentType == 15) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					SpotFestival festival = new SpotFestival();
					
					festival.setContentid(item.get("contentid").getAsString());
					festival.setContenttypeid(item.get("contenttypeid").getAsString());
					festival.setAgelimit(item.get("agelimit").getAsString());
					festival.setBookingplace(item.get("bookingplace").getAsString());
					festival.setDiscountinfofestival(item.get("discountinfofestival").getAsString());
					festival.setEventenddate(item.get("eventenddate").getAsString());
					festival.setEventhomepage(item.get("eventhomepage").getAsString());
					festival.setEventplace(item.get("eventplace").getAsString());
					festival.setEventstartdate(item.get("eventstartdate").getAsString());
					festival.setFestivalgrade(item.get("festivalgrade").getAsString());
					festival.setPlaceinfo(item.get("placeinfo").getAsString());
					festival.setPlaytime(item.get("playtime").getAsString());
					festival.setProgram(item.get("program").getAsString());
					festival.setSpendtimefestival(item.get("spendtimefestival").getAsString());
					festival.setSponsor1(item.get("sponsor1").getAsString());
					festival.setSponsor1tel(item.get("sponsor1tel").getAsString());
					festival.setSponsor2(item.get("sponsor2").getAsString());
					festival.setSponsor2tel(item.get("sponsor2tel").getAsString());
					festival.setSubevent(item.get("subevent").getAsString());
					festival.setUsetimefestival(item.get("usetimefestival").getAsString());
					
					apiListF.add(festival);
				
				}
			}
			else if(contentType == 28) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					SpotLeports leports = new SpotLeports();
					
					leports.setContentid(item.get("contentid").getAsString());
					leports.setContenttypeid(item.get("contenttypeid").getAsString());
					leports.setAccomcountleports(item.get("accomcountleports").getAsString());
					leports.setChkbabycarriageleports(item.get("chkcreditcardleports").getAsString());
					leports.setChkcreditcardleports(item.get("expagerangeleports").getAsString());
					leports.setChkpetleports(item.get("chkpetleports").getAsString());
					leports.setExpagerangeleports(item.get("expagerangeleports").getAsString());
					leports.setInfocenterleports(item.get("parkingfeeleports").getAsString());
					leports.setOpenperiod(item.get("openperiod").getAsString());
					leports.setParkingfeeleports(item.get("parkingfeeleports").getAsString());
					leports.setParkingleports(item.get("parkingleports").getAsString());
					leports.setReservation(item.get("reservation").getAsString());
					leports.setRestdateleports(item.get("restdateleports").getAsString());
					leports.setScaleleports(item.get("scaleleports").getAsString());
					leports.setUsefeeleports(item.get("usefeeleports").getAsString());
					leports.setUsetimeleports(item.get("usetimeleports").getAsString());
					
					apiListL.add(leports);
				
				}
			}
			else if(contentType == 32) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					
					SpotHotel hotel = new SpotHotel();
					
					
					hotel.setContentid(item.get("contentid").getAsString());
					hotel.setContenttypeid(item.get("contenttypeid").getAsString());
					hotel.setAccomcountlodging(item.get("accomcountlodging").getAsString());
					hotel.setCheckintime(item.get("checkintime").getAsString());
					hotel.setCheckouttime(item.get("checkouttime").getAsString());
					hotel.setChkcooking(item.get("chkcooking").getAsString());
					hotel.setInfocenterlodging(item.get("infocenterlodging").getAsString());
					hotel.setParkinglodging(item.get("parkinglodging").getAsString());
					hotel.setPickup(item.get("pickup").getAsString());
					hotel.setRoomcount(item.get("roomcount").getAsString());
					hotel.setReservationlodging(item.get("reservationlodging").getAsString());
					hotel.setReservationurl(item.get("reservationurl").getAsString());
					hotel.setRoomtype(item.get("roomtype").getAsString());
					hotel.setScalelodging(item.get("scalelodging").getAsString());
					hotel.setSubfacility(item.get("subfacility").getAsString());
					hotel.setRefundregulation(item.get("refundregulation").getAsString());
					
					
					apiListH.add(hotel);
				
				}
			}
			else if(contentType == 38) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					
					SpotShop shop = new SpotShop();
					
					
					shop.setContentid(item.get("contentid").getAsString());
					shop.setContenttypeid(item.get("contenttypeid").getAsString());
					shop.setChkbabycarriageshopping(item.get("chkbabycarriageshopping").getAsString());
					shop.setChkcreditcardshopping(item.get("chkcreditcardshopping").getAsString());
					shop.setChkpetshopping(item.get("chkpetshopping").getAsString());
					shop.setInfocentershopping(item.get("infocentershopping").getAsString());
					shop.setOpendateshopping(item.get("opendateshopping").getAsString());
					shop.setOpentime(item.get("opentime").getAsString());
					shop.setParkingshopping(item.get("parkingshopping").getAsString());
					shop.setRestdateshopping(item.get("restdateshopping").getAsString());
					shop.setRestroom(item.get("restroom").getAsString());
					shop.setSaleitem(item.get("saleitem").getAsString());
					shop.setSaleitemcost(item.get("saleitemcost").getAsString());
					shop.setScaleshopping(item.get("scaleshopping").getAsString());
					shop.setShopguide(item.get("shopguide").getAsString());
					
					apiListS.add(shop);
				
				}
			}
			
			else if(contentType == 39) {
				for(int i = 0; i < items.size(); i++) {
					
					JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					System.out.println(item);
					
					
					SpotRestaurant restaurant = new SpotRestaurant();
					
					
					
					
					restaurant.setContentid(item.get("contentid").getAsString());
					restaurant.setContenttypeid(item.get("contenttypeid").getAsString());
					restaurant.setChkcreditcardfood(item.get("chkcreditcardfood").getAsString());
					restaurant.setDiscountinfofood(item.get("discountinfofood").getAsString());
					restaurant.setFirstmenu(item.get("firstmenu").getAsString());
					restaurant.setInfocenterfood(item.get("infocenterfood").getAsString());
					restaurant.setKidsfacility(item.get("kidsfacility").getAsString());
					restaurant.setOpentimefood(item.get("opentimefood").getAsString());
					restaurant.setPacking(item.get("packing").getAsString());
					restaurant.setParkingfood(item.get("parkingfood").getAsString());
					restaurant.setReservationfood(item.get("reservationfood").getAsString());
					restaurant.setRestdatefood(item.get("restdatefood").getAsString());
					restaurant.setScalefood(item.get("scalefood").getAsString());
					restaurant.setSeat(item.get("seat").getAsString());
					restaurant.setTreatmenu(item.get("treatmenu").getAsString());
					
					apiListR.add(restaurant);
				
				}
			}

			
			
			
			br.close();
			urlConnection.disconnect();
			
			
			
//			for(SpotTour a : apiList) {
//				System.out.println(a);
//			}
			
			// api 공통정보조회
			String url2 = "http://apis.data.go.kr/B551011/KorService1/detailCommon1";
	        url2 +="?MobileOS=etc&MobileApp=tripism&_type=json&contentId="+contentId
	        		   +"&defaultYN=Y&firstImageYN=N&areacodeYN=N&catcodeYN=N&addrinfoYN=N&mapinfoYN=N&overviewYN=Y&numOfRows=1&pageNo=1&serviceKey="+servicekey;
	        
	        System.out.println("url2 : " + url2);

			URL requestUrl2 = new URL(url2);
			
			// 2. 1번 과정으로 생성된 URL 객체 가지고 HttpURLConnection 객체 생성
			HttpURLConnection urlConnection2 = (HttpURLConnection)requestUrl2.openConnection();
			
			// 3. 요청에 필요한 Header 설정하기
			urlConnection2.setRequestMethod("GET");
			
			// 4. 해당 OpenAPI 서버로 요청 보낸 후 입력 스트림을 통해 응답데이터 읽어들이기
			BufferedReader br2 = new BufferedReader(new InputStreamReader(urlConnection2.getInputStream()));
			
			String line2;
			String responseText2 = "";
			
			while((line2 = br2.readLine())!= null) {
				System.out.println(line2);
				responseText2 += line2;
			}
			
			JsonParser parser2 = new JsonParser();
			JsonElement element2 = parser2.parse(responseText2);
			JsonObject responseObj2 = element2.getAsJsonObject().get("response").getAsJsonObject();
			JsonObject bodyObj2 = responseObj2.getAsJsonObject().get("body").getAsJsonObject();
			JsonObject items2 = bodyObj2.getAsJsonObject().get("items").getAsJsonObject();
			
			System.out.println(responseObj2);
			System.out.println(bodyObj2);
			System.out.println(items2);
			
			ArrayList<SpotCommon> apiList2 = new ArrayList<>();
			
			for(int i = 0; i < items2.size(); i++) {
				
				JsonObject item2 = items2.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
				
				System.out.println(item2);
				
				SpotCommon common = new SpotCommon();
				
				
				
				common.setContentid(item2.get("contentid").getAsString());
				common.setContenttypeid(item2.get("contenttypeid").getAsString());
				common.setBooktour(item2.get("booktour").getAsString());
				common.setCreatedtime(item2.get("createdtime").getAsString());
				common.setHomepage(item2.get("homepage").getAsString());
				common.setModifiedtime(item2.get("modifiedtime").getAsString());
				common.setTel(item2.get("tel").getAsString());
				common.setTelname(item2.get("telname").getAsString());
				common.setTitle(item2.get("title").getAsString());
				common.setOverview(item2.get("overview").getAsString());
				
				apiList2.add(common);
			
			}
			
			
			br2.close();
			urlConnection2.disconnect();
			
			//
			
			// api 이미지조회
			String url3 = "http://apis.data.go.kr/B551011/KorService1/detailImage1";
	        url3 +="?MobileOS=etc&MobileApp=tripism&_type=json&contentId="+contentId
	        		   +"&imageYN=Y&subImageYN=Y&numOfRows=20&pageNo=1&serviceKey="+servicekey;
	        
	        System.out.println("url3 : " + url3);

			URL requestUrl3 = new URL(url3);
			
			// 2. 1번 과정으로 생성된 URL 객체 가지고 HttpURLConnection 객체 생성
			HttpURLConnection urlConnection3 = (HttpURLConnection)requestUrl3.openConnection();
			
			// 3. 요청에 필요한 Header 설정하기
			urlConnection3.setRequestMethod("GET");
			
			// 4. 해당 OpenAPI 서버로 요청 보낸 후 입력 스트림을 통해 응답데이터 읽어들이기
			BufferedReader br3 = new BufferedReader(new InputStreamReader(urlConnection3.getInputStream()));
			
			String line3;
			String responseText3 = "";
			
			while((line3 = br3.readLine())!= null) {
				System.out.println(line3);
				responseText3 += line3;
			}
			
			JsonParser parser3 = new JsonParser();
			JsonElement element3 = parser3.parse(responseText3);
			JsonObject responseObj3 = element3.getAsJsonObject().get("response").getAsJsonObject();
			JsonObject bodyObj3 = responseObj3.getAsJsonObject().get("body").getAsJsonObject();
			
			System.out.println("bodyObj3 :"+bodyObj3);
			
			int totalCount = bodyObj3.getAsJsonObject().get("totalCount").getAsInt();
			
			if(totalCount == 0) {
				
				model.addAttribute("checkImg", 0);
				
			}else {
			
			JsonObject items3 = bodyObj3.getAsJsonObject().get("items").getAsJsonObject();
			
			JsonArray itemsArray3 = items3.getAsJsonObject().get("item").getAsJsonArray();
			
			ArrayList<SpotImage> apiList3 = new ArrayList<>();
			
				for(int i = 0; i < itemsArray3.size(); i++) {
					
					JsonObject item3 = items3.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
					
					
					SpotImage image = new SpotImage();
					
					image.setContentid(item3.get("contentid").getAsString());
					image.setImgname(item3.get("imgname").getAsString());
					image.setOriginimgurl(item3.get("originimgurl").getAsString());
					image.setSerialnum(item3.get("serialnum").getAsString());
					image.setCpyrhtDivCd(item3.get("cpyrhtDivCd").getAsString());
					image.setSmallimageurl(item3.get("smallimageurl").getAsString());
					
					apiList3.add(image);
					
					ArrayList<SpotImage> al3 = apiList3;
					
					model.addAttribute("al3", al3);
				}
			
			}
			
			br3.close();
			urlConnection3.disconnect();
					
			// db 기본정보 담기
			Spot s = sService.selectSpotDetail(contentId);

			SpotCommon al2 = apiList2.get(0);
			
			model.addAttribute("s", s);
			
			model.addAttribute("al2", al2);
			
			
			switch (contentType) {
			case 12:
				SpotTour al = apiList.get(0);
				model.addAttribute("al", al);
				break;
				
			case 14:
				SpotCulture alc = apiListC.get(0);
				model.addAttribute("al", alc);
				System.out.println("alc : " + alc);
				break;
			
			case 15:
				SpotFestival alf = apiListF.get(0);
				model.addAttribute("al", alf);
				
				break;
				
			case 28:
				SpotLeports all = apiListL.get(0);
				model.addAttribute("al", all);
				
				break;
				
			case 32:
				SpotHotel alh = apiListH.get(0);
				model.addAttribute("al", alh);
				
				break;
				
			case 38:
				SpotShop als = apiListS.get(0);
				model.addAttribute("al", als);
				
				break;
			case 39:
				SpotRestaurant alr = apiListR.get(0);
				model.addAttribute("al", alr);
				
				break;
				
			default:
				break;
			}
			
			return "travelSpot/travelSpotDetailView";
		}else {
			model.addAttribute("errorMsg","상세조회 실패");
			return "common/errorPage";
		}
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="spotList.sp", produces = "application/json; charset=utf-8")
	public String selectSpotList(int currentPage) {
		
		System.out.println("ddddd");
		
		ArrayList<Spot> list = sService.selectSpotList(currentPage);
		
		return new Gson().toJson(list);
		
	}
	
	@ResponseBody
	@RequestMapping("replyInsert.sp")
	public String ajaxInsertReply(Reply r) {
		int result = sService.insertReply(r);
		
		return result > 0 ? "success" : "fail";
	}
	
	@ResponseBody
	@RequestMapping(value = "replylist.sp", produces = "application/json; charset=utf-8")
	public String ajaxSelectReplyList(int boardNo) {
		
		ArrayList<Reply> list = sService.selectReplyList(boardNo);
		
		return new Gson().toJson(list);
	}
	
	@RequestMapping(value="searchSpotList.sp", produces = "application/json; charset=utf-8")
	public String searchSpotList(int currentPage, int spotContentType, int areaCategoryNo, Model model) {
		
		System.out.println("currentPage : " + currentPage);
		System.out.println("spotContentType : " + spotContentType);
		System.out.println("areaCategoryNo : " + areaCategoryNo);
		
		ArrayList<Spot> list = sService.searchSpotList(currentPage, spotContentType, areaCategoryNo);
		
		System.out.println(list);
		
		ArrayList<Spot> sl = list;
		
		System.out.println(sl);
		
		Spot slo = sl.get(0);
		
		System.out.println(slo);
		
		if(spotContentType == 0 && areaCategoryNo != 0) {
			slo.setSpotContentType("0");
		}
		else if(spotContentType != 0 && areaCategoryNo == 0) {
			slo.setAreaCategoryNo("0");
		}
		else if(spotContentType == 0 && areaCategoryNo == 0) {
			slo.setSpotContentType("0");
			slo.setAreaCategoryNo("0");
		}
		
		model.addAttribute("slo", slo);

		model.addAttribute("sl", sl);
		
		return "travelSpot/searchSpotList";
		
	}
	
	@ResponseBody
	@RequestMapping(value="searchSpotListTwo.sp", produces = "application/json; charset=utf-8")
	public String searchSpotListTwo(int currentPage, int spotContentType, int areaCategoryNo) {
		

		System.out.println("currentPage : " + currentPage);
		System.out.println("spotContentType : " + spotContentType);
		System.out.println("areaCategoryNo : " + areaCategoryNo);
		
		ArrayList<Spot> list = sService.searchSpotList(currentPage, spotContentType, areaCategoryNo);
		
		System.out.println("list : " + list);
		
		return new Gson().toJson(list);
		
	}
	
	@RequestMapping(value="increaseLike.sp", produces = "application/json; charset=utf-8")
	public String increaseLike(int contentId, Model model) {
		System.out.println("1112312123");
		int result = sService.increaseLike(contentId);
		System.out.println("444444444444");
		if (result > 0) {
			System.out.println("asdasdasd");
			return null;
		}else {
			model.addAttribute("errorMsg","상세조회 실패");
			return "common/errorPage";
		}
		
	}
	

}
