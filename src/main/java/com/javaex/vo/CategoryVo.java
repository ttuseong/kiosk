package com.javaex.vo;

public class CategoryVo {
   private int categoryNo;
   private String categoryName;
   private int publicYN;
   private String categoryImg;
   private int storeNo;
   private int isSet;
   private int cnt;

   
   
   public CategoryVo() {}
   
   public CategoryVo(String categoryName, int publicYN, String categoryImg, int categoryNo) {
	   this.categoryName = categoryName;
	   this.publicYN = publicYN;
	   this.categoryImg = categoryImg;
	   this.categoryNo = categoryNo;
   }

   public CategoryVo(String categoryName, int publicYN, String categoryImg) {
	   this.categoryName = categoryName;
	   this.publicYN = publicYN;
	   this.categoryImg = categoryImg;
   }

   public CategoryVo(int categoryNo, String categoryName, int publicYN, String categoryImg, int storeNo, int isSet,
         int cnt) {
      this.categoryNo = categoryNo;
      this.categoryName = categoryName;
      this.publicYN = publicYN;
      this.categoryImg = categoryImg;
      this.storeNo = storeNo;
      this.isSet = isSet;
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

   public String getCategoryImg() {
      return categoryImg;
   }

   public void setCategoryImg(String categoryImg) {
      this.categoryImg = categoryImg;
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
            + ", categoryImg=" + categoryImg + ", storeNo=" + storeNo + ", isSet=" + isSet + ", cnt=" + cnt + "]";
   }

    
   
}