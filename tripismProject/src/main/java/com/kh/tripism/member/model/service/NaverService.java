package com.kh.tripism.member.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.math.BigInteger;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

import javax.mail.Header;
import javax.management.RuntimeErrorException;

import org.apache.commons.io.IOExceptionWithCause;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kh.tripism.member.model.vo.Member;

@Service
public class NaverService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberServiceImpl mService;
	
	// 토큰값 받는 서비스
	public String getNaverAccessToken(String code, String state) {
		System.out.println(code);
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://nid.naver.com/oauth2.0/token";
		
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("GET");
            conn.setDoOutput(true);

            //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=s2qG1k_Km1cRMEHgEiDy"); // REST_API_KEY 입력
            sb.append("&client_secret=WJQg8h4nhK");
            sb.append("&redirect_uri=http://localhost:8007/tripism/naverLogin"); //인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            sb.append("&state=" + state);
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
	
	// 정보얻어오는
	public static void createNaverUser(String token) {

		String reqURL = "https://openapi.naver.com/v1/nid/me";
		// System.out.println(token);

		String header = "Bearer " + token;
	    //access_token을 이용하여 사용자 정보 조회
		
		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("Authorization", header);
		String responseBody = get(reqURL, requestHeaders);
		
		System.out.println(responseBody);
		
	}

	private static String get(String reqURL, Map<String, String> requestHeaders) {
	
			HttpURLConnection con = connect(reqURL);
			try {
				con.setRequestMethod("GET");
				for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
					con.setRequestProperty(header.getKey(), header.getValue());
				}
				
				int responseCode = con.getResponseCode();
				if(responseCode == HttpURLConnection.HTTP_OK) {
					return readBody(con.getInputStream());
				} else {
					return readBody(con.getErrorStream());
				}
			} catch (IOException e) {
				throw new RuntimeException("dd", e);
			} finally {
				con.disconnect();
			}
		}
	
	private static HttpURLConnection connect(String reqURL) {
		URL url;
		try {
			url = new URL(reqURL);
			return (HttpURLConnection)url.openConnection();
		} catch (IOException e) {
			throw new RuntimeException("API URL이 잘못되었습니다." + reqURL , e);
		}
	}
			
		


	private static String readBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);


        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();


            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }


            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
	}
	
	
//	    try {
//	       URL url = new URL(reqURL);
//	       HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//
//	       conn.setRequestMethod("GET");
//	       conn.setDoOutput(true);
//	       conn.setRequestProperty("Authorization", "Bearer " + token); //전송할 header 작성, access_token전송
//
//	       //결과 코드가 200이라면 성공
//	       int responseCode = conn.getResponseCode();
//	       System.out.println("responseCode : " + responseCode);
//
//	       //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
//	       BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//	       String line = "";
//	       String result = "";
//
//	       while ((line = br.readLine()) != null) {
//	           result += line;
//	       }
//	       
//	       System.out.println("response body : " + result);
//
//	       //Gson 라이브러리로 JSON파싱
//	       JsonParser parser = new JsonParser();
//	       JsonElement element = parser.parse(result);
//
////	       int id = element.getAsJsonObject().get("id").getAsInt();
////	       boolean hasEmail = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
////	       boolean hasEmail2 = element.getAsJsonObject().get("kakao_account").getAsJsonObject().get("has_email").getAsBoolean();
//	       String email = element.getAsJsonObject().get("email").getAsString();
//	       String[] emailId = element.getAsJsonObject().get("email").getAsString().split("@",0);
//	       String img = element.getAsJsonObject().get("profile_image").getAsString();
//	       
//	       
//
//	      // System.out.println("id : " + id);
//	       System.out.println("email" + email);
//	       System.out.println("emailId : " + emailId[0]);
//	       System.out.println("email : " + img);
//	       
//	       m.setMemId(emailId[0]);
//	       m.setEmail(email);
//	       // m.setImg("resources/uploadFiles/" + img);
//	       m.setImg(img);
//	       
//	       return m;
//
//	       } catch (IOException e) {
//	            e.printStackTrace();
//	       }
//		return m; 

