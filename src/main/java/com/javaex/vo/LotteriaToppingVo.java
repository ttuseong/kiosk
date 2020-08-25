package com.javaex.vo;

public class LotteriaToppingVo {
	
	private int toppingNo;
	private String toppingName;
	private int toppingPrice;
	private String toppingImg;
	private int menuNo;
	
	public LotteriaToppingVo() {}
	public LotteriaToppingVo(int toppingNo, String toppingName, int toppingPrice, String toppingImg, int menuNo) {
		super();
		this.toppingNo = toppingNo;
		this.toppingName = toppingName;
		this.toppingPrice = toppingPrice;
		this.toppingImg = toppingImg;
		this.menuNo = menuNo;
	}

	public int getToppingNo() {
		return toppingNo;
	}
	public void setToppingNo(int toppingNo) {
		this.toppingNo = toppingNo;
	}
	public String getToppingName() {
		return toppingName;
	}
	public void setToppingName(String toppingName) {
		this.toppingName = toppingName;
	}
	public int getToppingPrice() {
		return toppingPrice;
	}
	public void setToppingPrice(int toppingPrice) {
		this.toppingPrice = toppingPrice;
	}
	public String getToppingImg() {
		return toppingImg;
	}
	public void setToppingImg(String toppingImg) {
		this.toppingImg = toppingImg;
	}
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	@Override
	public String toString() {
		return "LotteriaToppingVo [toppingNo=" + toppingNo + ", toppingName=" + toppingName + ", toppingPrice="
				+ toppingPrice + ", toppingImg=" + toppingImg + ", menuNo=" + menuNo + "]";
	}
	
}
