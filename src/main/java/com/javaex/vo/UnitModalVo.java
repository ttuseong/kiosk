package com.javaex.vo;

public class UnitModalVo {
	private int unitNo;
	private String unitName;
	private int menuNo;
	private int setMenuNo;
	private String menuName;
	private int categoryNo;
	private String categoryName;
	
	public UnitModalVo() {}

	// 전체적인 단위 정보를 담기 위한 생성자
	public UnitModalVo(int unitNo, String unitName, int menuNo, String menuName, int categoryNo, String categoryName) {
		this.unitNo = unitNo;
		this.unitName = unitName;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
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
	
	public int getMenuNo() {
		return menuNo;
	}
	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public int getSetMenuNo() {
		return setMenuNo;
	}
	public void setSetMenuNo(int setMenuNo) {
		this.setMenuNo = setMenuNo;
	}
	
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
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
	
	@Override
	public String toString() {
		return "UnitModalVo [unitNo=" + unitNo + ", unitName=" + unitName + ", menuNo=" + menuNo + ", setMenuNo="
				+ setMenuNo + ", menuName=" + menuName + ", categoryNo=" + categoryNo + ", categoryName=" + categoryName
				+ "]";
	}
}
