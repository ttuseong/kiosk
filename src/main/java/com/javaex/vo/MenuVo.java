package com.javaex.vo;

public class MenuVo {
	private int menuNo;
	private int categoryNo;
	private String categoryName;
	private String menuName;
	private String menuDesc;
	private int menuPrice;
	private String menuImg;
	private int isSpecial;
	private int isChange;
	private int isSet;
	private int defaultNo;
	private int unitNo;
	private String unitName;
	private String composition;
	private int discount;
	private int useMenu;
	
	public int getIsSpecial() {
		return isSpecial;
	}

	public void setIsSpecial(int isSpecial) {
		this.isSpecial = isSpecial;
	}

	public int getIsChange() {
		return isChange;
	}

	public void setIsChange(int isChange) {
		this.isChange = isChange;
	}

	public MenuVo() {}
	
	public MenuVo(int unitNo, String unitName) {
		this.unitNo = unitNo;
		this.unitName = unitName;
	}

	public MenuVo(int categoryNo, String menuName, String menuDesc, int menuPrice, String menuImg, int isSpecial,
			int isChange, int unitNo) {
		this.categoryNo = categoryNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSpecial = isSpecial;
		this.isChange = isChange;
		this.unitNo = unitNo;
	}

	public MenuVo(int categoryNo, String menuName, String menuDesc, int menuPrice, String menuImg, int isSpecial,
			int isChange, int unitNo, int discount) {
		this.categoryNo = categoryNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSpecial = isSpecial;
		this.isChange = isChange;
		this.unitNo = unitNo;
		this.discount = discount;
	}

	public MenuVo(int categoryNo, String menuName, String menuDesc, int menuPrice, String menuImg, int isSpecial,
			int isChange, int unitNo, int menuNo, int discount) {
		this.categoryNo = categoryNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isSpecial = isSpecial;
		this.isChange = isChange;
		this.unitNo = unitNo;
		this.menuNo = menuNo;
		this.discount = discount;
	}
	
	public MenuVo(int menuNo, int categoryNo, String categoryName, String menuName, String menuDesc, int menuPrice,
			String menuImg, int isSet, int defaultNo, int unitNo, String unitName, int useMenu, int discount) {
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
		this.useMenu = useMenu;
		this.discount = discount;
	}

	public int getUseMenu() {
		return useMenu;
	}

	public void setUseMenu(int useMenu) {
		this.useMenu = useMenu;
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

	public int getDefaultNo() {
		return defaultNo;
	}

	public void setDefaultNo(int defaultNo) {
		this.defaultNo = defaultNo;
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
	
	public String getComposition() {
		return composition;
	}

	public void setComposition(String composition) {
		this.composition = composition;
	}	

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "MenuVo [menuNo=" + menuNo + ", categoryNo=" + categoryNo + ", categoryName=" + categoryName
				+ ", menuName=" + menuName + ", menuDesc=" + menuDesc + ", menuPrice=" + menuPrice + ", menuImg="
				+ menuImg + ", isSpecial=" + isSpecial + ", isChange=" + isChange + ", isSet=" + isSet + ", defaultNo="
				+ defaultNo + ", unitNo=" + unitNo + ", unitName=" + unitName + ", composition=" + composition
				+ ", discount=" + discount + ", useMenu=" + useMenu + ", getIsSpecial()=" + getIsSpecial()
				+ ", getIsChange()=" + getIsChange() + ", getUseMenu()=" + getUseMenu() + ", getMenuNo()=" + getMenuNo()
				+ ", getCategoryNo()=" + getCategoryNo() + ", getCategoryName()=" + getCategoryName()
				+ ", getMenuName()=" + getMenuName() + ", getMenuDesc()=" + getMenuDesc() + ", getMenuPrice()="
				+ getMenuPrice() + ", getMenuImg()=" + getMenuImg() + ", getIsSet()=" + getIsSet() + ", getDefaultNo()="
				+ getDefaultNo() + ", getUnitNo()=" + getUnitNo() + ", getUnitName()=" + getUnitName()
				+ ", getComposition()=" + getComposition() + ", getDiscount()=" + getDiscount() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
}
