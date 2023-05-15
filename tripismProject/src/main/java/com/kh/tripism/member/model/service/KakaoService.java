package com.kh.tripism.member.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

	@Service
	public class KakaoService {

		/*
		 * public String getToken(String code) throws IOException { // 인가코드로 토큰받기 String
		 * host = "https://kauth.kakao.com/oauth/token"; URL url = new URL(host);
		 * HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
		 * String token = ""; try { urlConnection.setRequestMethod("POST");
		 * urlConnection.setDoOutput(true); // 데이터 기록 알려주기
		 * 
		 * BufferedWriter bw = new BufferedWriter(new
		 * OutputStreamWriter(urlConnection.getOutputStream())); StringBuilder sb = new
		 * StringBuilder(); sb.append("grant_type=authorization_code");
		 * sb.append("&client_id=2aad40910868e3c5fa9594f8de34a07b");
		 * sb.append("&redirect_uri=http://localhost:8080/member/kakao");
		 * sb.append("&code=" + code);
		 * 
		 * bw.write(sb.toString()); bw.flush();
		 * 
		 * int responseCode = urlConnection.getResponseCode();
		 * System.out.println("responseCode = " + responseCode);
		 * 
		 * BufferedReader br = new BufferedReader(new
		 * InputStreamReader(urlConnection.getInputStream())); String line = ""; String
		 * result = ""; while ((line = br.readLine()) != null) { result += line; }
		 * System.out.println("result = " + result);
		 * 
		 * // json parsing JSONParser parser = new JSONParser(); JSONObject elem =
		 * (JSONObject) parser.parse(result);
		 * 
		 * String access_token = elem.get("access_token").toString(); String
		 * refresh_token = elem.get("refresh_token").toString();
		 * System.out.println("refresh_token = " + refresh_token);
		 * System.out.println("access_token = " + access_token);
		 * 
		 * token = access_token;
		 * 
		 * br.close(); bw.close(); } catch (IOException e) { e.printStackTrace(); }
		 * catch (org.json.simple.parser.ParseException e) { e.printStackTrace(); }
		 * 
		 * 
		 * return token; }
		 */
}