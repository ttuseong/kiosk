package com.javaex.vo;

public class LotteriaVo {
	
	private int categoryNo;
	private String categoryName;
	private String setName;
	private int setPrice;
	private String setDesc;
	private String setImg;
	private int setNo;
	
	public LotteriaVo() {}
	public LotteriaVo(int categoryNo, String categoryName, String setName, int setPrice, String setDesc, String setImg, int setNo) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.setName = setName;
		this.setPrice = setPrice;
		this.setDesc = setDesc;
		this.setImg = setImg;
		this.setNo = setNo;
	}
	
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getSetName() {
		return setName;
	}
	public void setSetName(String setName) {
		this.setName = setName;
	}
	public int getSetPrice() {
		return setPrice;
	}
	public void setSetPrice(int setPrice) {
		this.setPrice = setPrice;
	}
	public String getSetDesc() {
		return setDesc;
	}
	public void setSetDesc(String setDesc) {
		this.setDesc = setDesc;
	}
	public String getSetImg() {
		return setImg;
	}
	public void setSetImg(String setImg) {
		this.setImg = setImg;
	}
	public int getSetNo() {
		return setNo;
	}
	public void setSetNo(int setNo) {
		this.setNo = setNo;
	}
	@Override
	public String toString() {
		return "LotteriaVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", setName=" + setName
				+ ", setPrice=" + setPrice + ", setDesc=" + setDesc + ", setImg=" + setImg + ", setNo=" + setNo + "]";
	}
	
	
}
