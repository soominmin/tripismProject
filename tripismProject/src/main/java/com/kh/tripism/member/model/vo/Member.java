package com.kh.tripism.member.model.vo;

public class Member {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memNickname;
	private String gender;
    private String enrollDate;
	private String status;
	private String mbti;
	private String email;
	private String img;
	
	public Member () {}

	public Member(int memNo, String memId, String memPwd, String memName, String memNickname, String gender,
			String enrollDate, String status, String mbti, String email, String img) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memNickname = memNickname;
		this.gender = gender;
		this.enrollDate = enrollDate;
		this.status = status;
		this.mbti = mbti;
		this.email = email;
		this.img = img;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemNickname() {
		return memNickname;
	}

	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memNickname=" + memNickname + ", gender=" + gender + ", enrollDate=" + enrollDate + ", status="
				+ status + ", Mbti=" + mbti + ", email=" + email + ", img=" + img + "]";
	}

	
}
