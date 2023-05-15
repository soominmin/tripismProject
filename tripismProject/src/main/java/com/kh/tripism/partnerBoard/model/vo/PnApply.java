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
public class PnApply {
	
	private String applyNo;					// 신청번호
	private int postNo;						// 게시글번호
	private int memNo; 						// 회원번호
	private String applyStatus;				// 승인상태

}
