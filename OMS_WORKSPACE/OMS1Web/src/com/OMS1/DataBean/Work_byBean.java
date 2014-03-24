/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class Work_byBean {
int Work_id;
int Customer_id;
int User_id;
int order_id;
/**
 * @return the work_id
 */
public int getWork_id() {
	return Work_id;
}
/**
 * @param work_id the work_id to set
 */
public void setWork_id(int work_id) {
	Work_id = work_id;
}
/**
 * @return the customer_id
 */
public int getCustomer_id() {
	return Customer_id;
}
/**
 * @param customer_id the customer_id to set
 */
public void setCustomer_id(int customer_id) {
	Customer_id = customer_id;
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
 * @param customer_id
 * @param user_id
 * @param work_id
 * @param order_id
 */
public Work_byBean(int customer_id, int user_id, int work_id, int order_id) {
	super();
	Customer_id = customer_id;
	User_id = user_id;
	Work_id = work_id;
	this.order_id = order_id;
}
/**
 * 
 */
public Work_byBean() {
	super();
	// TODO Auto-generated constructor stub
}
}
