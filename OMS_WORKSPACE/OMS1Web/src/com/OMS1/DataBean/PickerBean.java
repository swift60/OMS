package com.OMS1.DataBean;
import java.sql.Time;
import java.util.*;

public class PickerBean {
	long ORDER_NO;
	int SADDRESS_ID;
	Date DATE;
	Time TIME;

	/**
	 * 
	 */
	public PickerBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param date
	 * @param order_no
	 * @param saddress_id
	 * @param time
	 */
	public PickerBean(Date date, long order_no, int saddress_id,
			Time time) {
		super();
		DATE = date;
		ORDER_NO = order_no;
		SADDRESS_ID = saddress_id;
		TIME = time;
	}
	/**
	 * @return the oRDER_NO
	 */
	public long getORDER_NO() {
		return ORDER_NO;
	}
	/**
	 * @param order_noop the oRDER_NO to set
	 */
	public void setORDER_NOOP(long order_no) {
		ORDER_NO = order_no;
	}
	/**
	 * @return the sADDRESS_ID
	 */
	public int getSADDRESS_ID() {
		return SADDRESS_ID;
	}
	/**
	 * @param saddress_id the sADDRESS_ID to set
	 */
	public void setSADDRESS_ID(int saddress_id) {
		SADDRESS_ID = saddress_id;
	}
	/**
	 * @return the dATE
	 */
	public Date getDATE() {
		return DATE;
	}
	/**
	 * @param date the dATE to set
	 */
	public void setDATE(Date date) {
		DATE = date;
	}
	/**
	 * @return the tIME
	 */
	public Time getTIME() {
		return TIME;
	}
	/**
	 * @param time the tIME to set
	 */
	public void setTIME(Time time) {
		TIME = time;
	}
	
}
