
package com.javaex.vo;

public class LotteriaVo {
	
	private int categoryNo;
	private String categoryName;
	
	private int menuNo;
	private String menuName;
	private String menuDesc;
	private int menuPrice;
	private String menuImg;
	private int isChange;
	private int unitNo;
	
	public LotteriaVo() {}
	public LotteriaVo(int categoryNo, String categoryName, int menuNo, String menuName, String menuDesc, int menuPrice,
			String menuImg, int isChange, int unitNo) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuDesc = menuDesc;
		this.menuPrice = menuPrice;
		this.menuImg = menuImg;
		this.isChange = isChange;
		this.unitNo = unitNo;
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
	public int getIsChange() {
		return isChange;
	}
	public void setIsChange(int isChange) {
		this.isChange = isChange;
	}
	public int getUnitNo() {
		return unitNo;
	}
	public void setUnitNo(int unitNo) {
		this.unitNo = unitNo;
	}
	
	@Override
	public String toString() {
		return "LotteriaVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", menuNo=" + menuNo
				+ ", menuName=" + menuName + ", menuDesc=" + menuDesc + ", menuPrice=" + menuPrice + ", menuImg="
				+ menuImg + ", isChange=" + isChange + ", unitNo=" + unitNo + "]";
	}
	
	
}