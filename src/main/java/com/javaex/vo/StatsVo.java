package com.javaex.vo;

public class StatsVo {
	private String endPoint;
	private int count;
	private int storeNo;
	private double percentage;
	private String storeName;
	private int month;
	private int year;
	private String levels;
	private int userNo;
	
	public StatsVo() {}
	
	public StatsVo(String endPoint, int storeNo) {
		this.endPoint = endPoint;
		this.storeNo = storeNo;
	}
	
	public StatsVo(int storeNo, String levels) {
		this.storeNo = storeNo;
		this.levels = levels;
	}
	
	public StatsVo(int userNo, int year) {
		this.userNo = userNo;
		this.year = year;
	}

	public StatsVo(String endPoint, int count, int storeNo, double percentage, String storeName, int month, int year,
			String levels, int userNo) {
		this.endPoint = endPoint;
		this.count = count;
		this.storeNo = storeNo;
		this.percentage = percentage;
		this.storeName = storeName;
		this.month = month;
		this.year = year;
		this.levels = levels;
		this.userNo = userNo;
	}

	public String getEndPoint() {
		return endPoint;
	}

	public void setEndPoint(String endPoint) {
		this.endPoint = endPoint;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getLevels() {
		return levels;
	}

	public void setLevels(String levels) {
		this.levels = levels;
	}
	
	

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "StatsVo [endPoint=" + endPoint + ", count=" + count + ", storeNo=" + storeNo + ", percentage="
				+ percentage + ", storeName=" + storeName + ", month=" + month + ", year=" + year + ", levels=" + levels
				+ "]";
	}
}
