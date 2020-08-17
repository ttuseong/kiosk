package com.javaex.vo;

public class ToppingVo {
	private int toppingNo;
	private int sotreNo;
	private String toppingName;
	private int toppingPrice;
	private String toppingImg;
	
	public ToppingVo() {}
	
	public ToppingVo(int toppingNo, int sotreNo, String toppingName, int toppingPrice, String toppingImg) {
		super();
		this.toppingNo = toppingNo;
		this.sotreNo = sotreNo;
		this.toppingName = toppingName;
		this.toppingPrice = toppingPrice;
		this.toppingImg = toppingImg;
	}

	public int getToppingNo() {
		return toppingNo;
	}

	public void setToppingNo(int toppingNo) {
		this.toppingNo = toppingNo;
	}

	public int getSotreNo() {
		return sotreNo;
	}

	public void setSotreNo(int sotreNo) {
		this.sotreNo = sotreNo;
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

	@Override
	public String toString() {
		return "ToppingVo [toppingNo=" + toppingNo + ", sotreNo=" + sotreNo + ", toppingName=" + toppingName
				+ ", toppingPrice=" + toppingPrice + ", toppingImg=" + toppingImg + "]";
	}
}
