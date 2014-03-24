package com.OMS1.DataBean;

import java.sql.Time;
import java.util.Date;

public class ReportBean {
long ORDER_NO;
int SADDRESS_ID;
Date DATE;
Time TIME;
/**
 * 
 */
public ReportBean() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param date
 * @param order_no
 * @param saddress_id
 * @param time
 */
public ReportBean(Date date, long order_no, int saddress_id, Time time) {
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
 * @param order_no the oRDER_NO to set
 */
public void setORDER_NO(long order_no) {
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
