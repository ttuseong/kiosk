package com.javaex.vo;

public class StoreVo {
	private int storeNo;
	private String storeName;
	private String sotreLogo;
	
	
	
	public StoreVo() {}

	public StoreVo(int storeNo, String storeName, String sotreLogo) {
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.sotreLogo = sotreLogo;
	}

	public int getStoreNo() {
		return storeNo;
	}

	public void setStoreNo(int storeNo) {
		this.storeNo = storeNo;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getSotreLogo() {
		return sotreLogo;
	}

	public void setSotreLogo(String sotreLogo) {
		this.sotreLogo = sotreLogo;
	}

	@Override
	public String toString() {
		return "StoreVo [storeNo=" + storeNo + ", storeName=" + storeName + ", sotreLogo=" + sotreLogo + "]";
	}
}
