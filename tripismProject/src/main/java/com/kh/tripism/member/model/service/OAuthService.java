package com.kh.tripism.member.model.service;

import com.google.gson.JsonParser;
import com.kh.tripism.member.model.dao.MemberDao;
import com.kh.tripism.member.model.vo.Member;
import com.google.gson.JsonElement;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;


@Service
public class OAuthService {
	
	@Autowired
	private SqlSessionTemplate sqlSession; // 스프링에서 다름
	
	@Autowired
	private MemberServiceImpl mService;
	
	public String getKakaoAccessToken(String code) {
		System.out.println(code);
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=acce547533917e39df39803a17ee07fb"); // REST_API_KEY 입력
            sb.append("&redirect_uri=http://localhost:8007/tripism/oauth/kakao"); //인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
            System.out.println(code);
            //결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            //Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);

            br.close();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return access_Token;
    }
	
	public String getKakaoAccessToken2(String code) {
		System.out.println(code);
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=acce547533917e39df39803a17ee07fb"); // REST_API_KEY 입력
            sb.append("&redirect_uri=http://localhost:8007/tripism/oauth/kakaoinsert"); //인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
            System.out.println(code);
            //결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            //Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);

            br.close();
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return access_Token;
    }
	


public Member createKakaoUser(String token, Member m) {

	String reqURL = "https://kapi.kakao.com/v2/user/me";
	System.out.println(token);

    //access_token을 이용하여 사용자 정보 조회
    try {
       URL url = new URL(reqURL);
       HttpURLConnection conn = (HttpURLConnection) url.openConnection();

       conn.setRequestMethod("POST");
       conn.setDoOutput(true);
       conn.setRequestProperty("Authorization", "Bearer " + token); //전송할 header 작성, access_token전송

       //결과 코드가 200이라면 성공
       int responseCode = conn.getResponseCode();
       System.out.println("responseCode : " + responseCode);

       //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
       BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
       String line = "";
       String result = "";

       while ((line = br.readLine()) != null) {
           result += line;
       }
       
       System.out.println("response body : " + result);

       //Gson 라이브러리로 JSON파싱
       JsonParser parser = new JsonParser();
       JsonElement element = parser.parse(result);

       int id = element.getAsJsonObject().get("id").getAsInt();
       boolean hasEmail = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
       boolean hasEmail2 = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
       String email = "";
       String[] emailId = null;
       String nickname = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("nickname").getAsString();
       String img = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("thumbnail_image_url").getAsString();
       
       boolean hasGender = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_gender").getAsBoolean();
       String gender = "";
       // String img = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("c").getAsString();
       

       if(hasEmail){
           email = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("email").getAsString();
       }
       if(hasGender) {
    	   gender = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("gender").getAsString().substring(0,1).toUpperCase();
       }
       if(hasEmail2) {
    	   emailId = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("email").getAsString().split("@", 0);
       }

       System.out.println("id : " + id);
       System.out.println("email : " + email);
       System.out.println("nickname : " + nickname);
       System.out.println("gender : " + gender);
       System.out.println("emailId : " + emailId[0]);
       System.out.println("img : " + img);
       
       m.setMemId(emailId[0]);
       m.setMemNickname(nickname);
       m.setGender(gender);
       m.setEmail(email);
       // m.setImg("resources/uploadFiles/" + img);
       m.setImg(img);
       
       
       return m;

       } catch (IOException e) {
            e.printStackTrace();
       }
	return m; 
 }

public Member createKakaoUser2(String token, Member m) {

	String reqURL = "https://kapi.kakao.com/v2/user/me";
	System.out.println(token);

    //access_token을 이용하여 사용자 정보 조회
    try {
       URL url = new URL(reqURL);
       HttpURLConnection conn = (HttpURLConnection) url.openConnection();

       conn.setRequestMethod("POST");
       conn.setDoOutput(true);
       conn.setRequestProperty("Authorization", "Bearer " + token); //전송할 header 작성, access_token전송

       //결과 코드가 200이라면 성공
       int responseCode = conn.getResponseCode();
       System.out.println("responseCode : " + responseCode);

       //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
       BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
       String line = "";
       String result = "";

       while ((line = br.readLine()) != null) {
           result += line;
       }
       
       System.out.println("response body : " + result);

       //Gson 라이브러리로 JSON파싱
       JsonParser parser = new JsonParser();
       JsonElement element = parser.parse(result);

       int id = element.getAsJsonObject().get("id").getAsInt();
       boolean hasEmail = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
       boolean hasEmail2 = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
       String email = "";
       String[] emailId = null;
       String nickname = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("nickname").getAsString();
       String img = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("thumbnail_image_url").getAsString();
       
       boolean hasGender = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_gender").getAsBoolean();
       String gender = "";
       // String img = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("profile").getAsJsonObject().get("c").getAsString();
       

       if(hasEmail){
           email = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("email").getAsString();
       }
       if(hasGender) {
    	   gender = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("gender").getAsString().substring(0,1).toUpperCase();
       }
       if(hasEmail2) {
    	   emailId = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("email").getAsString().split("@", 0);
       }

       System.out.println("id : " + id);
       System.out.println("email : " + email);
       System.out.println("nickname : " + nickname);
       System.out.println("gender : " + gender);
       System.out.println("emailId : " + emailId[0]);
       System.out.println("img : " + img);
       
       m.setMemId(emailId[0]);
       m.setMemNickname(nickname);
       m.setGender(gender);
       m.setEmail(email);
       m.setImg("resources/uploadFiles/" + img);
       
       
       return m;

       } catch (IOException e) {
            e.printStackTrace();
       }
	return m; 
 }
}