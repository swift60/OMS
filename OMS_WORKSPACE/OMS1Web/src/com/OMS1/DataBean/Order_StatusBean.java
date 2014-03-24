/**
 * 
 */
package com.OMS1.DataBean;

import java.util.Date;

/**
 * @author db2admin
 *
 */
public class Order_StatusBean {
int Status_id;
Date Date;
/**
 * @return the status_id
 */
public int getStatus_id() {
	return Status_id;
}
/**
 * @param status_id the status_id to set
 */
public void setStatus_id(int status_id) {
	Status_id = status_id;
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
 * @return the user_id
 */
public int getUser_id() {
	return User_id;
}
/**
 * @param user_id the user_id to set
 */
public void setUser_id(int user_id) {
	User_id = user_id;
}
/**
 * @return the status
 */
public String getStatus() {
	return Status;
}
/**
 * @param status the status to set
 */
public void setStatus(String status) {
	Status = status;
}
/**
 * @return the order_id
 */
public int getOrder_id() {
	return order_id;
}
/**
 * @param order_id the order_id to set
 */
public void setOrder_id(int order_id) {
	this.order_id = order_id;
}
/**
 * @return the prod_id
 */
public int getProd_id() {
	return Prod_id;
}
/**
 * @param prod_id the prod_id to set
 */
public void setProd_id(int prod_id) {
	Prod_id = prod_id;
}
/**
 * @param date
 * @param prod_id
 * @param status
 * @param status_id
 * @param user_id
 * @param order_id
 */
public Order_StatusBean(Date date, int prod_id, String status, int status_id,
		int user_id, int order_id) {
	super();
	Date = date;
	Prod_id = prod_id;
	Status = status;
	Status_id = status_id;
	User_id = user_id;
	this.order_id = order_id;
}
/**
 * 
 */
public Order_StatusBean() {
	super();
	// TODO Auto-generated constructor stub
}
int User_id;
String Status;
int order_id;
int Prod_id;
}
