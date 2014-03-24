/**
 * 
 */
package com.OMS1.DataBean;



/**
 * @author db2admin
 *
 */
public class CustomerBean {
	String CUSTOMER_FIRSTNAME;
	String CUSTOMER_LASTNAME;
	String PASSWORD;		
	String EMAIL;
    long CONTACT;
	int CUSTOMER_ID;
	String USERNAME;
	String DOB;
	
	/**
	 * 
	 */
	public CustomerBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param contact
	 * @param customer_firstname
	 * @param customer_id
	 * @param customer_lastname
	 * @param dob
	 * @param email
	 * @param password
	 * @param username
	 */
	public CustomerBean(long contact, String customer_firstname,
			int customer_id, String customer_lastname, String dob,
			String email, String password, String username) {
		super();
		CONTACT = contact;
		CUSTOMER_FIRSTNAME = customer_firstname;
		CUSTOMER_ID = customer_id;
		CUSTOMER_LASTNAME = customer_lastname;
		DOB = dob;
		EMAIL = email;
		PASSWORD = password;
		USERNAME = username;
	}
	/**
	 * @return the cUSTOMER_FIRSTNAME
	 */
	public String getCUSTOMER_FIRSTNAME() {
		return CUSTOMER_FIRSTNAME;
	}
	/**
	 * @param customer_firstname the cUSTOMER_FIRSTNAME to set
	 */
	public void setCUSTOMER_FIRSTNAME(String customer_firstname) {
		CUSTOMER_FIRSTNAME = customer_firstname;
	}
	/**
	 * @return the cUSTOMER_LASTNAME
	 */
	public String getCUSTOMER_LASTNAME() {
		return CUSTOMER_LASTNAME;
	}
	/**
	 * @param customer_lastname the cUSTOMER_LASTNAME to set
	 */
	public void setCUSTOMER_LASTNAME(String customer_lastname) {
		CUSTOMER_LASTNAME = customer_lastname;
	}
	/**
	 * @return the pASSWORD
	 */
	public String getPASSWORD() {
		return PASSWORD;
	}
	/**
	 * @param password the pASSWORD to set
	 */
	public void setPASSWORD(String password) {
		PASSWORD = password;
	}
	/**
	 * @return the eMAIL
	 */
	public String getEMAIL() {
		return EMAIL;
	}
	/**
	 * @param email the eMAIL to set
	 */
	public void setEMAIL(String email) {
		EMAIL = email;
	}
	/**
	 * @return the cONTACT
	 */
	public long getCONTACT() {
		return CONTACT;
	}
	/**
	 * @param contact the cONTACT to set
	 */
	public void setCONTACT(long contact) {
		CONTACT = contact;
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
	 * @return the uSERNAME
	 */
	public String getUSERNAME() {
		return USERNAME;
	}
	/**
	 * @param username the uSERNAME to set
	 */
	public void setUSERNAME(String username) {
		USERNAME = username;
	}
	/**
	 * @return the dOB
	 */
	public String getDOB() {
		return DOB;
	}
	/**
	 * @param dob the dOB to set
	 */
	public void setDOB(String dob) {
		DOB = dob;
	}
	
	
}
