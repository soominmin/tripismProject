package com.kh.tripism.feed.model.vo;

import java.sql.Date;

/* lombok 쓰면 쓰고, 아니면 안 쓸 것
@NoArgsConstructor
@Setter
@Getter
@ToString
*/

public class Reply {
	private int ReplyNo;
	private int BoardNo;
	private int memNo;
	private String replyContents;
	private Date replyDate;
	private String replyDistinct;
	
public Reply() {}

public Reply(int replyNo, int boardNo, int memNo, String replyContents, Date replyDate, String replyDistinct) {
	super();
	ReplyNo = replyNo;
	BoardNo = boardNo;
	this.memNo = memNo;
	this.replyContents = replyContents;
	this.replyDate = replyDate;
	this.replyDistinct = replyDistinct;
}

public int getReplyNo() {
	return ReplyNo;
}

public void setReplyNo(int replyNo) {
	ReplyNo = replyNo;
}

public int getBoardNo() {
	return BoardNo;
}

public void setBoardNo(int boardNo) {
	BoardNo = boardNo;
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
	return "Reply [ReplyNo=" + ReplyNo + ", BoardNo=" + BoardNo + ", memNo=" + memNo + ", replyContents="
			+ replyContents + ", replyDate=" + replyDate + ", replyDistinct=" + replyDistinct + "]";
};


	
}
