package com.javaex.vo;

public class StoreVo {
	private int storeNo;
	private String storeName;
	private String storeLogo;
	
	
	
	public StoreVo() {}

	public StoreVo(int storeNo, String storeName, String storeLogo) {
		this.storeNo = storeNo;
		this.storeName = storeName;
		this.storeLogo = storeLogo;
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

	public String getStoreLogo() {
		return storeLogo;
	}

	public void setStoreLogo(String storeLogo) {
		this.storeLogo = storeLogo;
	}

	@Override
	public String toString() {
		return "StoreVo [storeNo=" + storeNo + ", storeName=" + storeName + ", storeLogo=" + storeLogo + "]";
	}

	
}
