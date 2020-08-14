package com.javaex.vo;

public class LotteriaVo {
	
	private int categoryNo;
	private String categoryName;
	private String setName;
	private int setPrice;
	private String setDesc;
	private String setImg;
	private int setNo;
	
	private int menuNo;
	private String menuName;
	private String menuDesc;
	private int menuPrice;
	private String menuImg;
	private int isSpecial;
	
	
	
	public LotteriaVo() {}
	public LotteriaVo(int categoryNo, String categoryName, String setName, int setPrice, String setDesc, String setImg,
			int setNo, int menuNo, String menuName, String menuDesc, int menuPrice, String menuImg, int isSpecial) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.setName = setName;
		this.setPrice = setPrice;
		this.setDesc = setDesc;
		this.setImg = setImg;
		this.setNo = setNo;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSpecial = isSpecial;
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
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuDesc() {
		return menuDesc;
	}
	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public String getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}
	public int getIsSpecial() {
		return isSpecial;
	}
	public void setIsSpecial(int isSpecial) {
		this.isSpecial = isSpecial;
	}
	
	@Override
	public String toString() {
		return "LotteriaVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", setName=" + setName
				+ ", setPrice=" + setPrice + ", setDesc=" + setDesc + ", setImg=" + setImg + ", setNo=" + setNo
				+ ", menuNo=" + menuNo + ", menuName=" + menuName + ", menuDesc=" + menuDesc + ", menuPrice="
				+ menuPrice + ", menuImg=" + menuImg + ", isSpecial=" + isSpecial + "]";
	}
}