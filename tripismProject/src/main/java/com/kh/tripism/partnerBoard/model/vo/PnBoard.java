package com.kh.tripism.partnerBoard.model.vo;

import java.sql.Date;

import com.kh.tripism.member.model.vo.Member;
import com.kh.tripism.travelSpot.model.vo.Spot;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class PnBoard {
	
	private int postNo;						// 게시글번호
	private int memNo; 						// 회원번호
	private String partnerName;	 			// 회원이름	
	private String partnerType;	 			// 여행타입
	private String partnerOriginalImg; 		// 대표이미지 원본이름
	private String partnerChangeImg; 		// 대표이미지 변경이름 "resources/uploadFiles/xxx.jpg" 이렇게 넣을거임 
	private Date partnerDate; 				// 작성일
	private String partnerViews; 			// 조회수	
	private String partnerTitle;			// 글제목
	private String partnerContent; 			// 글내용
	private String partnerStartDate; 		// 여행시작일정
	private String partnerEndDate; 			// 여행마지막일정
	private String areaCategoryNo; 			// 여행지역 숫자
	private String partnerNumber; 			// 모집인원
	private String partnerStatus;			// 동행상태
	private Member member;
	private Spot spot;
	
	
}
