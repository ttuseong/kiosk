package com.javaex.vo;

public class UserVo {
	
	private int userNo;
	private String userId;
	private String userPw;
	
	public UserVo() {}
	public UserVo(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
	}
	public UserVo(int userNo, String userId, String userPw) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
	}
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", userId=" + userId + ", userPW=" + userPw + "]";
	}
	
}
