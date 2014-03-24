/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class CategoryBean {
	int Cat_id;
	String Cat_name;
	/**
	 * 
	 */
	public CategoryBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param cat_id
	 * @param cat_name
	 */
	public CategoryBean(int cat_id, String cat_name) {
		super();
		Cat_id = cat_id;
		Cat_name = cat_name;
	}
	/**
	 * @return the cat_id
	 */
	public int getCat_id() {
		return Cat_id;
	}
	/**
	 * @param cat_id the cat_id to set
	 */
	public void setCat_id(int cat_id) {
		Cat_id = cat_id;
	}
	/**
	 * @return the cat_name
	 */
	public String getCat_name() {
		return Cat_name;
	}
	/**
	 * @param cat_name the cat_name to set
	 */
	public void setCat_name(String cat_name) {
		Cat_name = cat_name;
	}
	

}
