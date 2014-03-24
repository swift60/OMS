/**
 * 
 */
package com.OMS1.DataBean;



/**
 * @author db2admin
 *
 */
public class User_DetailsBean {
	int U_ID;
	 String U_NAME;
	 String USERNAME;
	 String PASSWORD;
	 String EMAILID;
	 long CONTACT_NO;
	 String ADDRESS;
	 int ROLE_ID;
/**
	 * 
	 */
	 public User_DetailsBean(String address, long contact_no, String emailid,
				String password, int role_id, String username, String u_name,
				int u_id) {
			super();
			ADDRESS = address;
			CONTACT_NO = contact_no;
			EMAILID = emailid;
			PASSWORD = password;
			ROLE_ID = role_id;
			USERNAME = username;
			U_NAME = u_name;
			U_ID= u_id;
		}
	/**
		 * @return the user_id
		 */
		public int getU_ID() {
			return U_ID;
		}
		/**
		 * @param user_id the user_id to set
		 */
		public void setU_ID(int u_id) {
			U_ID = u_id;
		}
		/**
		 * @return the U_NAME
		 */
		public String getU_NAME() {
			return U_NAME;
		}
		/**
		 * @param user_name the uSER_NAME to set
		 */
		public void setU_NAME(String u_name) {
			U_NAME = u_name;
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
		 * @return the eMAILID
		 */
		public String getEMAILID() {
			return EMAILID;
		}
		/**
		 * @param emailid the eMAILID to set
		 */
		public void setEMAILID(String emailid) {
			EMAILID = emailid;
		}
		/**
		 * @return the cONTACT_NO
		 */
		public long getCONTACT_NO() {
			return CONTACT_NO;
		}
		/**
		 * @param contact_no the cONTACT_NO to set
		 */
		public void setCONTACT_NO(long contact_no) {
			CONTACT_NO = contact_no;
		}
		/**
		 * @return the aDDRESS
		 */
		public String getADDRESS() {
			return ADDRESS;
		}
		/**
		 * @param address the aDDRESS to set
		 */
		public void setADDRESS(String address) {
			ADDRESS = address;
		}
		/**
		 * @return the rOLE_ID
		 */
		public int getROLE_ID() {
			return ROLE_ID;
		}
		/**
		 * @param role_id the rOLE_ID to set
		 */
		public void setROLE_ID(int role_id) {
			ROLE_ID = role_id;
		}

	public User_DetailsBean() {
		super();
		// TODO Auto-generated constructor stub
	}
/**
	 * @param address
	 * @param contact_no
	 * @param emailid
	 * @param password
	 * @param role_id
	 * @param username
	 * @param u_name
	 * @param user_id
	 */
	
}
 
