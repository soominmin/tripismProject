package com.kh.tripism.common.vo;

public class Reply {
	
	private int replyNo;	// 댓글번호
	private int boardNo;	// 게시글 번호
	private int memNo;		// 작성자 번호
	private String replyContents;	// 댓글내용
	private String replyDate;		// 작성일
	private String replyDistinct;	// 구분
	
	// 댓글 작성자
	private String replyWriter;
	
	public Reply() {}


	public Reply(int replyNo, int boardNo, int memNo, String replyContents, String replyDate, String replyDistinct,
			String replyWriter) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.memNo = memNo;
		this.replyContents = replyContents;
		this.replyDate = replyDate;
		this.replyDistinct = replyDistinct;
		this.replyWriter = replyWriter;
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

	public String getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(String replyDate) {
		this.replyDate = replyDate;
	}

	public String getReplyDistinct() {
		return replyDistinct;
	}

	public void setReplyDistinct(String replyDistinct) {
		this.replyDistinct = replyDistinct;
	}
	
	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}


	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", memNo=" + memNo + ", replyContents="
				+ replyContents + ", replyDate=" + replyDate + ", replyDistinct=" + replyDistinct + ", replyWriter="
				+ replyWriter + "]";
	}


	
}
