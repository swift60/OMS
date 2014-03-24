/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class Ship_AddressBean {
int SADDRESS_ID;
int CUSTOMER_ID;
int HNO;
String STREET;
String CITY;
String DISTRICT;
String STATE;
String LANDMARK;
long PINCODE;
/**
 * @return the pINCODE
 */
public long getPINCODE() {
	return PINCODE;
}
/**
 * @param pincode the pINCODE to set
 */
public void setPINCODE(long pincode) {
	PINCODE = pincode;
}
/**
 * 
 */
public Ship_AddressBean() {
	super();
	// TODO Auto-generated constructor stub
}
/**
 * @param city
 * @param customer_id
 * @param district
 * @param hno
 * @param landmark
 * @param saddress_id
 * @param state
 * @param street
 */
public Ship_AddressBean(String city, int customer_id, String district,
		int hno, String landmark, int saddress_id, String state,
		String street,long pincode) {
	super();
	CITY = city;
	CUSTOMER_ID = customer_id;
	DISTRICT = district;
	HNO = hno;
	LANDMARK = landmark;
	SADDRESS_ID = saddress_id;
	STATE = state;
	STREET = street;
	PINCODE= pincode;
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
 * @return the hNO
 */
public int getHNO() {
	return HNO;
}
/**
 * @param hno the hNO to set
 */
public void setHNO(int hno) {
	HNO = hno;
}
/**
 * @return the sTREET
 */
public String getSTREET() {
	return STREET;
}
/**
 * @param street the sTREET to set
 */
public void setSTREET(String street) {
	STREET = street;
}
/**
 * @return the cITY
 */
public String getCITY() {
	return CITY;
}
/**
 * @param city the cITY to set
 */
public void setCITY(String city) {
	CITY = city;
}
/**
 * @return the dISTRICT
 */
public String getDISTRICT() {
	return DISTRICT;
}
/**
 * @param district the dISTRICT to set
 */
public void setDISTRICT(String district) {
	DISTRICT = district;
}
/**
 * @return the sTATE
 */
public String getSTATE() {
	return STATE;
}
/**
 * @param state the sTATE to set
 */
public void setSTATE(String state) {
	STATE = state;
}
/**
 * @return the lANDMARK
 */
public String getLANDMARK() {
	return LANDMARK;
}
/**
 * @param landmark the lANDMARK to set
 */
public void setLANDMARK(String landmark) {
	LANDMARK = landmark;
}

}
/**
 * @return the sAddress_id
 */
