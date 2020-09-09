package com.javaex.util;

public class Paging {
	public int w_size = 9; // 글 개수
	public int p_size = w_size * 5; // 페이지 개수
	public int writing_Count = 0;
	public int categoryNo;

	public int cur_Page = 0; //현재페이지

	public Paging(int w_size, int p_size, int writing_Count, int cur_Page) {
		this.w_size = w_size;
		this.p_size = p_size;
		this.writing_Count = writing_Count;
		this.cur_Page = cur_Page;
	}

	public Paging(int w_size, int p_size, int writing_Count, int cur_Page, int categoryNo) {
		this.w_size = w_size;
		this.p_size = p_size;
		this.writing_Count = writing_Count;
		this.cur_Page = cur_Page;
		this.categoryNo = categoryNo;
	}

	public int getPage_Count() {
		return ((writing_Count - 1) / w_size) + 1;
	}

	public int getPage_Start() {
		return ((cur_Page - 1) / p_size) * p_size + 1;
	}

	public int getPage_End() {
		return Math.min(getPage_Start() + p_size - 1, getPage_Count());
	}

	public boolean isPre() {
		return getPage_Start() != 1;
	}

	public boolean isNext() {
		return getPage_End() < getPage_Count();
	}

	public int getWriting_Start() {
		return getWriting_End() - w_size + 1;
	}

	public int getWriting_End() {
		return cur_Page * w_size;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	
} 