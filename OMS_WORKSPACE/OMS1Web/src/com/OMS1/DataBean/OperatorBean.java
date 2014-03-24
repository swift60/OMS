package com.OMS1.DataBean;
import java.sql.Time;
import java.util.Date;

public class OperatorBean {
	/**
	 * 
	 */
	public OperatorBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	long ORDER_NO;
	int SADDRESS_ID;
	Date DATE;
	Time TIME;

	/**
	 * @param address_id
	 * @param date
	 * @param orderno_sp
	 * @param time
	 */
	public OperatorBean(int saddress_id, Date date, long order_no, Time time) {
		super();
		SADDRESS_ID = saddress_id;
		DATE = date;
		ORDER_NO= order_no;
		TIME = time;
	}
	/**
	 * @return the oRDER_NO
	 */
	public long getORDER_NO() {
		return ORDER_NO;
	}
	/**
	 * @param orderno_sp the oRDERNO_SP to set
	 */
	public void setORDER_NO(long order_no) {
		ORDER_NO = order_no;
	}
	/**
	 * @return the aDDRESS_ID
	 */
	public int getADDRESS_ID() {
		return SADDRESS_ID;
	}
	/**
	 * @param address_id the aDDRESS_ID to set
	 */
	public void setADDRESS_ID(int saddress_id) {
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
