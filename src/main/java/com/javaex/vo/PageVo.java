package com.javaex.vo;

public class PageVo {
	private int categoryNo;
	private int currentPage;
	private int startPoint;
	private int endPoint;
	
	public PageVo() {}

	public PageVo(int categoryNo, int currentPage, int startPoint, int endPoint) {
		super();
		this.categoryNo = categoryNo;
		this.currentPage = currentPage;
		this.startPoint = startPoint;
		this.endPoint = endPoint;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStartPoint() {
		return startPoint;
	}

	public void setStartPoint(int startPoint) {
		this.startPoint = startPoint;
	}

	public int getEndPoint() {
		return endPoint;
	}

	public void setEndPoint(int endPoint) {
		this.endPoint = endPoint;
	}

	@Override
	public String toString() {
		return "KFCPageVo [categoryNo=" + categoryNo + ", currentPage=" + currentPage + ", startPoint=" + startPoint
				+ ", endPoint=" + endPoint + "]";
	}
	
	
}
