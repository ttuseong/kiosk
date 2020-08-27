package com.javaex.vo;

public class CategoryVo {
	private int categoryNo;
	private String categoryName;
	private int publicYN;
	private int isSet;
	private int storeNo;
	private int cnt;

	
	
	public CategoryVo() {}
	
	public CategoryVo(int categoryNo, String categoryName, int publicYN, int isSet, int storeNo, int cnt) {
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.publicYN = publicYN;
		this.isSet = isSet;
		this.storeNo = storeNo;
		this.cnt = cnt;
	}

	

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
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
		return "CategoryVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", publicYN=" + publicYN
				+ ", isSet=" + isSet + ", storeNo=" + storeNo + ", cnt=" + cnt + "]";
	}



    
	
}
