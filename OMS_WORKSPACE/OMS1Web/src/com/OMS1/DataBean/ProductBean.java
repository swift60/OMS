/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class ProductBean {
	String PROD_ID;
	/**
	 * @return the pROD_ID
	 */
	public String getPROD_ID() {
		return PROD_ID;
	}
	/**
	 * @param prod_id the pROD_ID to set
	 */
	public void setPROD_ID(String prod_id) {
		PROD_ID = prod_id;
	}
	/**
	 * @return the pROD_NAME
	 */
	public String getPROD_NAME() {
		return PROD_NAME;
	}
	/**
	 * @param prod_name the pROD_NAME to set
	 */
	public void setPROD_NAME(String prod_name) {
		PROD_NAME = prod_name;
	}
	/**
	 * @return the dESCRIPTION
	 */
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	/**
	 * @param description the dESCRIPTION to set
	 */
	public void setDESCRIPTION(String description) {
		DESCRIPTION = description;
	}
	/**
	 * @return the qTY
	 */
	public int getQTY() {
		return QTY;
	}
	/**
	 * @param qty the qTY to set
	 */
	public void setQTY(int qty) {
		QTY = qty;
	}
	/**
	 * @return the cOST
	 */
	public int getCOST() {
		return COST;
	}
	/**
	 * @param cost the cOST to set
	 */
	public void setCOST(int cost) {
		COST = cost;
	}
	/**
	 * @return the iMAGEPATH
	 */
	public String getIMAGEPATH() {
		return IMAGEPATH;
	}
	/**
	 * @param imagepath the iMAGEPATH to set
	 */
	public void setIMAGEPATH(String imagepath) {
		IMAGEPATH = imagepath;
	}
	/**
	 * @return the cAT_ID
	 */
	public int getCAT_ID() {
		return CAT_ID;
	}
	/**
	 * @param cat_id the cAT_ID to set
	 */
	public void setCAT_ID(int cat_id) {
		CAT_ID = cat_id;
	}
	String PROD_NAME;
	/**
	 * 
	 */
	public ProductBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param cat_id
	 * @param cost
	 * @param description
	 * @param imagepath
	 * @param prod_id
	 * @param prod_name
	 * @param qty
	 */
	public ProductBean(int cat_id, int cost, String description,
			String imagepath, String prod_id, String prod_name, int qty) {
		super();
		CAT_ID = cat_id;
		COST = cost;
		DESCRIPTION = description;
		IMAGEPATH = imagepath;
		PROD_ID = prod_id;
		PROD_NAME = prod_name;
		QTY = qty;
	}
	String DESCRIPTION;
	int QTY;
	int COST;
	String IMAGEPATH;
	int CAT_ID;
}
	