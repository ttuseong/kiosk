package com.javaex.vo;

public class CategoryVo {
   private int categoryNo;
   private String categoryName;
   private int publicYN;
   private String categoryImg;
   private int storeNo;
   private int highlight;
   private int cnt;
   private int rn;
   private int userNo;

   
   public CategoryVo() {}
   
   public CategoryVo(String categoryName, int publicYN, String categoryImg, int categoryNo, int userNo) {
	   this.categoryName = categoryName;
	   this.publicYN = publicYN;
	   this.categoryImg = categoryImg;
	   this.categoryNo = categoryNo;
	   this.userNo = userNo;
   }
   

   public CategoryVo(String categoryName, int publicYN, String categoryImg, int userNo) {
	super();
	this.categoryName = categoryName;
	this.publicYN = publicYN;
	this.categoryImg = categoryImg;
	this.userNo = userNo;
}

public CategoryVo(int categoryNo, String categoryName, int userNo) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.userNo = userNo;
}

   public CategoryVo(String categoryName, int publicYN, String categoryImg) {
	   this.categoryName = categoryName;
	   this.publicYN = publicYN;
	   this.categoryImg = categoryImg;
   }

	public CategoryVo(int categoryNo, String categoryName, int publicYN, String categoryImg, int storeNo, int highlight,
		int cnt, int rn, int userNo) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.publicYN = publicYN;
		this.categoryImg = categoryImg;
		this.storeNo = storeNo;
		this.highlight = highlight;
		this.cnt = cnt;
		this.rn = rn;
		this.userNo = userNo;
	}

	public int getRn() {
	  return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
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

   public String getCategoryImg() {
      return categoryImg;
   }

   public void setCategoryImg(String categoryImg) {
      this.categoryImg = categoryImg;
   }

	public int getHighlight() {
		return highlight;
	}
	
	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}
	
	@Override
	public String toString() {
		return "CategoryVo [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", publicYN=" + publicYN
				+ ", categoryImg=" + categoryImg + ", storeNo=" + storeNo + ", highlight=" + highlight + ", cnt=" + cnt
				+ ", rn=" + rn + ", userNo=" + userNo + "]";
	}
   
}