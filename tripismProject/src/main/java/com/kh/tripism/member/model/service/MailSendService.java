package com.kh.tripism.member.model.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

// @component => 빈 자동등록
@Component
public class MailSendService {
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	private int authNumber;
	
		// 난수발생 메소드
		public void randomNum() {
			Random r = new Random();
			authNumber = r.nextInt(888888)+111111;
			// System.out.println("인증번호" + authNumber);
		}
		
		// 이메일 보낼 양식
		public String contentEmail(String email) {
			randomNum();
			String setFrom = "hsb10920@gamil.com"; // email-config에 설정한 자신의 이메일 주소 입력
			String toMail= email;
			String title = "Tripism 비밀번호 찾기 인증번호 입니다."; // 이메일 제목
			String content = "안녕하세요. Tripism입니다." + "<br><br>" + "인증 번호는" + authNumber + "입니다.";
			mailSend(setFrom, toMail, title, content);
			return Integer.toString(authNumber);
		}
		

		public void mailSend(String setFrom, String toMail, String title, String content) {
			MimeMessage message = mailSender.createMimeMessage();
			
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
				helper.setFrom(setFrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				// true전달 > html형식으로 전송, 작성하지않으면 단순텍스트로 전달됨
				helper.setText(content,true);
				mailSender.send(message);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}



}
