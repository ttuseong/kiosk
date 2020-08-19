package com.javaex.vo;

public class MenuVo {
	private int menuNo;
	private String menuName;
	private String menuDesc;
	private int menuPrice;
	private String menuImg;
	private int isSet;
	
	public MenuVo() {}
	
	public MenuVo(int menuNo, String menuName, String menuDesc, int menuPrice, String menuImg, int isSet) {
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSet = isSet;
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
	

	public int getIsSet() {
		return isSet;
	}

	public void setIsSet(int isSet) {
		this.isSet = isSet;
	}

	@Override
	public String toString() {
		return "MenuVo [menuNo=" + menuNo + ", menuName=" + menuName + ", menuDesc=" + menuDesc + ", menuPrice="
				+ menuPrice + ", menuImg=" + menuImg + ", isSet=" + isSet + "]";
	}

	
}
