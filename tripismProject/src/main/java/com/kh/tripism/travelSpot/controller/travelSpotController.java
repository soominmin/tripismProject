package com.kh.tripism.travelSpot.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.kh.tripism.travelSpot.model.service.SpotServiceImpl;
import com.kh.tripism.travelSpot.model.vo.Spot;
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
	
	@ResponseBody
	@RequestMapping(value="detailAPI.sp", produces = "application/json; charset=utf-8")
	public String selectSpotAPI(int contentId, int contentType) throws IOException {
		
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
		
		
		JsonObject item = items.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject();
		
		System.out.println(item);
		
		
//		System.out.println(itemArr);
//		System.out.println(itemArr.size());
//		System.out.println((String)items.getAsJsonObject().get("item").getAsJsonArray().get(0).getAsJsonObject().get("contentid").getAsString());
//		System.out.println(items.size());
		
		
//		ArrayList<SpotTour> list = new ArrayList<>();
//		for(int i = 0; i < items.size(); i++) {
			
			
			
//			JsonObject item = items.getAsJsonArray().get(i).getAsJsonObject();
//			
//			System.out.println(item);
////			
////			SpotTour tour = new SpotTour();
////			
//////			air.setStationName(item.get("stationName").getAsString());
////			
////			list.add(tour);
//		}
		
		
//		ArrayList<Spot> result = sService.selectSpotAPI(items);
		
//		System.out.println(result);
		
		
		br.close();
		urlConnection.disconnect();
        
		return "travelSpot/travelSpotDetailView";
	}
	
	@ResponseBody 
	@RequestMapping(value="detailView.sp", produces = "application/json; charset=utf-8")
	public String selectSpotDetail(int contentId) {
		
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
