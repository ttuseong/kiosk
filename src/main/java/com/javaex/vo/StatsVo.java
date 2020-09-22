package com.javaex.vo;

public class StatsVo {
	private String endPoint;
	private int count;
	private int storeNo;
	private int percentage;
	private String storeName;
	private int month;
	private int year;
	
	public StatsVo() {}

	public StatsVo(String endPoint, int count, int storeNo, int percentage, String storeName, int month, int year) {
		super();
		this.endPoint = endPoint;
		this.count = count;
		this.storeNo = storeNo;
		this.percentage = percentage;
		this.storeName = storeName;
		this.month = month;
		this.year = year;
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

	public int getPercentage() {
		return percentage;
	}

	public void setPercentage(int percentage) {
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

	@Override
	public String toString() {
		return "StatsVo [endPoint=" + endPoint + ", count=" + count + ", storeNo=" + storeNo + ", percentage="
				+ percentage + ", storeName=" + storeName + ", month=" + month + ", year=" + year + "]";
	}

	
	
}
