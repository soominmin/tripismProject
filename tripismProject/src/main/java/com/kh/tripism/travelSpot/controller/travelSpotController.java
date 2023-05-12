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
import com.kh.tripism.travelSpot.model.service.SpotServiceImpl;
import com.kh.tripism.travelSpot.model.vo.Spot;
import com.kh.tripism.travelSpot.model.vo.SpotCommon;
import com.kh.tripism.travelSpot.model.vo.SpotImage;
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
		

//		System.out.println("responseText"+responseText);

		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(responseText);
		JsonObject responseObj = element.getAsJsonObject().get("response").getAsJsonObject();
		JsonObject bodyObj = responseObj.getAsJsonObject().get("body").getAsJsonObject();
		JsonObject items = bodyObj.getAsJsonObject().get("items").getAsJsonObject();
		
		System.out.println(responseObj);
		System.out.println(bodyObj);
		System.out.println(items);
		
//		JsonArray itemArr = bodyObj.getAsJsonArray("items");
		
		
		
		
		
//		System.out.println(itemArr);
//		System.out.println(itemArr.size());
//		System.out.println((String)items.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject().get("contentid").getAsString());
//		System.out.println(items.size());
		
		
		ArrayList<SpotTour> apiList = new ArrayList<>();
		
		for(int i = 0; i < items.size(); i++) {
			
			JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(i).getAsJsonObject();
			
			System.out.println(item);
			
			SpotTour tour = new SpotTour();
			
			
			
//			air.setStationName(item.get("stationName").getAsString());
			
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
		
//		ArrayList<Spot> result = sService.selectSpotAPI(items);
		
//		System.out.println(result);
		
		
		br.close();
		urlConnection.disconnect();
		
		
		
//		for(SpotTour a : apiList) {
//			System.out.println(a);
//		}
		
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
		JsonObject items3 = bodyObj3.getAsJsonObject().get("items").getAsJsonObject();
		
		System.out.println(responseObj3);
		System.out.println(bodyObj3);
		System.out.println(items3);
		
		JsonArray itemsArray3 = items3.getAsJsonObject().get("item").getAsJsonArray();
		
		System.out.println(itemsArray3.size());
		
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
		
		}
		
		
		br2.close();
		urlConnection2.disconnect();
		
		System.out.println(apiList3);
		
		for(SpotImage al3 : apiList3) {
			System.out.println(al3);
		}
				
		// db 기본정보 담기
		Spot s = sService.selectSpotDetail(contentId);
		
		SpotTour al = apiList.get(0);
		SpotCommon al2 = apiList2.get(0);
//		SpotImage al3 = apiList3.get(0);
		ArrayList<SpotImage> al3 = apiList3;
		
		System.out.println("s : " + s);
		System.out.println("al : " + al);
		System.out.println("al2 : " + al2);
		System.out.println("al3 : " + al3);
		
		model.addAttribute("s", s);
		model.addAttribute("al", al);
		model.addAttribute("al2", al2);
		model.addAttribute("al3", al3);
        
		return "travelSpot/travelSpotDetailView";
	}
	
	
	@ResponseBody
	@RequestMapping(value="spotList.sp", produces = "application/json; charset=utf-8")
	public String selectSpotList(int currentPage) {
		
		System.out.println("ddddd");
		
		ArrayList<Spot> list = sService.selectSpotList(currentPage);
		
		return new Gson().toJson(list);
		
	}

}
