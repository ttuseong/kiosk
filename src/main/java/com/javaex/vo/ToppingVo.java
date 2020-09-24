package com.javaex.vo;

public class ToppingVo {
	private int toppingNo;
	private int storeNo;
	private String toppingName;
	private int toppingPrice;
	private String toppingImg;
	
	public ToppingVo() {}
	

	public ToppingVo(String toppingName, int toppingPrice, String toppingImg) {
		super();
		this.toppingName = toppingName;
		this.toppingPrice = toppingPrice;
		this.toppingImg = toppingImg;
	}




	public ToppingVo(String toppingName, int toppingPrice, int toppingNo, String toppingImg) {
		this.toppingName = toppingName;
		this.toppingPrice = toppingPrice;
		this.toppingNo = toppingNo;
		this.toppingImg = toppingImg;
	}
	
	public ToppingVo(int toppingNo, int storeNo, String toppingName, int toppingPrice, String toppingImg) {
		super();
		this.toppingNo = toppingNo;
		this.storeNo = storeNo;
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

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
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
		return "ToppingVo [toppingNo=" + toppingNo + ", storeNo=" + storeNo + ", toppingName=" + toppingName
				+ ", toppingPrice=" + toppingPrice + ", toppingImg=" + toppingImg + "]";
	}
	



	
}
