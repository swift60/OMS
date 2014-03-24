package com.OMS1.DataBean;

public class BagBean {
	int BAG_ID;
	int CUSTOMER_ID;
	int QUANTITY;
	long PRICE;
	long TOTAL;
	String MODEL_NAME;
	String COLOR;
	/**
	 * @param count
	 */
	public BagBean(int count) {
		super();
		COUNT = count;
	}
	int COUNT;
	/**
	 * @return the cOUNT
	 */
	public int getCOUNT() {
		return COUNT;
	}
	/**
	 * @param count the cOUNT to set
	 */
	public void setCOUNT(int count) {
		COUNT = count;
	}
	/**
	 * 
	 */
	public BagBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param bag_id
	 * @param color
	 * @param customer_id
	 * @param model_name
	 * @param price
	 * @param quantity
	 * @param total
	 */
	public BagBean(int bag_id, String color, int customer_id,
			String model_name, long price, int quantity, long total, int count) {
		super();
		BAG_ID = bag_id;
		COLOR = color;
		CUSTOMER_ID = customer_id;
		MODEL_NAME = model_name;
		PRICE = price;
		QUANTITY = quantity;
		TOTAL = total;
		COUNT = count;
	}
	/**
	 * @return the bAG_ID
	 */
	public int getBAG_ID() {
		return BAG_ID;
	}
	/**
	 * @param bag_id the bAG_ID to set
	 */
	public void setBAG_ID(int bag_id) {
		BAG_ID = bag_id;
	}
	/**
	 * @return the cUSTOMER_ID
	 */
	public int getCUSTOMER_ID() {
		return CUSTOMER_ID;
	}
	/**
	 * @param customer_id the cUSTOMER_ID to set
	 */
	public void setCUSTOMER_ID(int customer_id) {
		CUSTOMER_ID = customer_id;
	}
	/**
	 * @return the qUANTITY
	 */
	public int getQUANTITY() {
		return QUANTITY;
	}
	/**
	 * @param quantity the qUANTITY to set
	 */
	public void setQUANTITY(int quantity) {
		QUANTITY = quantity;
	}
	/**
	 * @return the pRICE
	 */
	public long getPRICE() {
		return PRICE;
	}
	/**
	 * @param price the pRICE to set
	 */
	public void setPRICE(long price) {
		PRICE = price;
	}
	/**
	 * @return the tOTAL
	 */
	public long getTOTAL() {
		return TOTAL;
	}
	/**
	 * @param total the tOTAL to set
	 */
	public void setTOTAL(long total) {
		TOTAL = total;
	}
	/**
	 * @return the mODEL_NAME
	 */
	public String getMODEL_NAME() {
		return MODEL_NAME;
	}
	/**
	 * @param model_name the mODEL_NAME to set
	 */
	public void setMODEL_NAME(String model_name) {
		MODEL_NAME = model_name;
	}
	/**
	 * @return the cOLOR
	 */
	public String getCOLOR() {
		return COLOR;
	}
	/**
	 * @param color the cOLOR to set
	 */
	public void setCOLOR(String color) {
		COLOR = color;
	}
	

}
