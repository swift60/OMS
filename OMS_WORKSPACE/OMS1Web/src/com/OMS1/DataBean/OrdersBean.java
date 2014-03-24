/**
 * 
 */
package com.OMS1.DataBean;

import java.util.Date;

/**
 * @author db2admin
 *
 */
public class OrdersBean {
/**
	 * 
	 */
	public OrdersBean() {
		super();
		// TODO Auto-generated constructor stub
	}
/**
	 * @param bag_id
	 * @param customer_id
	 * @param date
	 * @param model_name
	 * @param orders_id
	 * @param price
	 * @param quantity
	 * @param total
	 */
	public OrdersBean(int bag_id, int customer_id, Date date,
			String model_name, int orders_id, long price, int quantity,
			long total) {
		super();
		BAG_ID = bag_id;
		CUSTOMER_ID = customer_id;
		Date = date;
		MODEL_NAME = model_name;
		ORDERS_ID = orders_id;
		PRICE = price;
		QUANTITY = quantity;
		TOTAL = total;
	}
/**
	 * @return the oRDERS_ID
	 */
	public int getORDERS_ID() {
		return ORDERS_ID;
	}
	/**
	 * @param orders_id the oRDERS_ID to set
	 */
	public void setORDERS_ID(int orders_id) {
		ORDERS_ID = orders_id;
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
	 * @return the date
	 */
	public Date getDate() {
		return Date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		Date = date;
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
int ORDERS_ID;
int CUSTOMER_ID;
Date Date;
String MODEL_NAME;
int QUANTITY;
int BAG_ID;
long PRICE;
long TOTAL;

}