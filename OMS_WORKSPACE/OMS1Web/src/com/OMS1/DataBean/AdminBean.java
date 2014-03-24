/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class AdminBean {
	String EMP_NAME;
	String USERNAME;
	String PASSWORD;
	String EMAILID;
	long TEL_NO;
	
public int getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(int emp_id) {
		EMP_ID = emp_id;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String emp_name) {
		EMP_NAME = emp_name;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public void setUSERNAME(String username) {
		USERNAME = username;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String password) {
		PASSWORD = password;
	}
	public String getEMAILID() {
		return EMAILID;
	}
	public void setEMAILID(String emailid) {
		EMAILID = emailid;
	}
	public long getTEL_NO() {
		return TEL_NO;
	}
	public void setTEL_NO(long tel_no) {
		TEL_NO = tel_no;
	}
int EMP_ID;
public AdminBean(String emailid, int emp_id, String emp_name, String password,
		int tel_no, String username) {
	super();
	
}

public AdminBean() {
	super();
	// TODO Auto-generated constructor stub
}

}