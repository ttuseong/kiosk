package com.javaex.vo;

public class KFCCategoryVo {
	private int categoryNo;
	private String categoryName;
	private int publicYN;
	private int isSet;
	
	public KFCCategoryVo() {}
	
	public KFCCategoryVo(int categoryNo, String categoryName, int publicYN, int isSet) {
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.publicYN = publicYN;
		this.isSet = isSet;
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

	public int getPublicYN() {
		return publicYN;
	}

	public void setPublicYN(int publicYN) {
		this.publicYN = publicYN;
	}

	public int getIsSet() {
		return isSet;
	}

	public void setIsSet(int isSet) {
		this.isSet = isSet;
	}

	@Override
	public String toString() {
		return "KFCCategoryVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", publicYN=" + publicYN
				+ ", isSet=" + isSet + "]";
	}
	
}
