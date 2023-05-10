package com.kh.tripism.partnerBoard.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@NoArgsConstructor
@Getter
@Setter
@ToString
public class PnReply {
	// 동행 댓글

	private int replyNo; 			// 댓글번호
	private int boardNo; 			// 게시글번호
	private int memNo; 				// 작성자번호
	private String replyContents;	// 댓글내용
	private Date replyDate; 		// 댓글 작성 날짜
	private String replyDistinct;	// 댓글 구분
	
}
