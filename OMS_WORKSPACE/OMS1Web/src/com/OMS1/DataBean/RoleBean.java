/**
 * 
 */
package com.OMS1.DataBean;

/**
 * @author db2admin
 *
 */
public class RoleBean {
	int Role_id;
	String Role_type;
	/**
	 * @return the role_id
	 */
	public int getRole_id() {
		return Role_id;
	}
	/**
	 * @param role_id the role_id to set
	 */
	public void setRole_id(int role_id) {
		Role_id = role_id;
	}
	/**
	 * @return the role_type
	 */
	public String getRole_type() {
		return Role_type;
	}
	/**
	 * @param role_type the role_type to set
	 */
	public void setRole_type(String role_type) {
		Role_type = role_type;
	}
	/**
	 * @param role_id
	 * @param role_type
	 */
	public RoleBean(int role_id, String role_type) {
		super();
		Role_id = role_id;
		Role_type = role_type;
	}
	/**
	 * 
	 */
	public RoleBean() {
		super();
		// TODO Auto-generated constructor stub
	}

}
