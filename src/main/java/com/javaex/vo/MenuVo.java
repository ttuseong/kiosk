package com.javaex.vo;

public class MenuVo {
	private int menuNo;
	private int categoryNo;
	private String categoryName;
	private String menuName;
	private String menuDesc;
	private int menuPrice;
	private String menuImg;
	private int isSet;
	private int defaultNo;
	private int unitNo;
	private String unitName;
	
	public MenuVo() {}

	

	public MenuVo(int menuNo, int categoryNo, String categoryName, String menuName, String menuDesc, int menuPrice,
			String menuImg, int isSet, int defaultNo, int unitNo, String unitName) {
		this.menuNo = menuNo;
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSet = isSet;
		this.defaultNo = defaultNo;
		this.unitNo = unitNo;
		this.unitName = unitName;
	}



	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
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

	public int getIsSet() {
		return isSet;
	}

	public void setIsSet(int isSet) {
		this.isSet = isSet;
	}

	public int getUnitNo() {
		return unitNo;
	}

	public void setUnitNo(int unitNo) {
		this.unitNo = unitNo;
	}

	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public int getDefaultNo() {
		return defaultNo;
	}

	public void setDefaultNo(int defaultNo) {
		this.defaultNo = defaultNo;
	}

	@Override
	public String toString() {
		return "MenuVo [menuNo=" + menuNo + ", categoryNo=" + categoryNo + ", categoryName=" + categoryName
				+ ", menuName=" + menuName + ", menuDesc=" + menuDesc + ", menuPrice=" + menuPrice + ", menuImg="
				+ menuImg + ", isSet=" + isSet + ", defaultNo=" + defaultNo + ", unitNo=" + unitNo + ", unitName="
				+ unitName + "]";
	}
}
