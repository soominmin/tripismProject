package com.kh.tripism.feed.model.vo;

import java.sql.Date;

/* lombok 쓰면 쓰고, 아니면 안 쓸 것
@NoArgsConstructor
@Setter
@Getter
@ToString
*/

public class Reply {
	private int replyNo;
	private int boardNo;
	private int memNo;
	private String replyContents;
	private Date replyDate;
	private String replyDistinct;
	
public Reply() {}

public Reply(int replyNo, int boardNo, int memNo, String replyContents, Date replyDate, String replyDistinct) {
	super();
	this.replyNo = replyNo;
	this.boardNo = boardNo;
	this.memNo = memNo;
	this.replyContents = replyContents;
	this.replyDate = replyDate;
	this.replyDistinct = replyDistinct;
}

public int getReplyNo() {
	return replyNo;
}

public void setReplyNo(int replyNo) {
	this.replyNo = replyNo;
}

public int getBoardNo() {
	return boardNo;
}

public void setBoardNo(int boardNo) {
	this.boardNo = boardNo;
}

public int getMemNo() {
	return memNo;
}

public void setMemNo(int memNo) {
	this.memNo = memNo;
}

public String getReplyContents() {
	return replyContents;
}

public void setReplyContents(String replyContents) {
	this.replyContents = replyContents;
}

public Date getReplyDate() {
	return replyDate;
}

public void setReplyDate(Date replyDate) {
	this.replyDate = replyDate;
}

public String getReplyDistinct() {
	return replyDistinct;
}

public void setReplyDistinct(String replyDistinct) {
	this.replyDistinct = replyDistinct;
}

@Override
public String toString() {
	return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", memNo=" + memNo + ", replyContents="
			+ replyContents + ", replyDate=" + replyDate + ", replyDistinct=" + replyDistinct + "]";
}



	
}
