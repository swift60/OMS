/**
 * 
 */
package com.OMS1.manager;

/**
 * @author db2admin
 *
 */
public class CacheManager extends Thread {
	
	int updateType=1;

	/**
	 * @return the updateType
	 */
	public int getUpdateType() {
		return updateType;
	}

	/**
	 * @param updateType the updateType to set
	 */
	public void setUpdateType(int updateType) {
		this.updateType = updateType;
	}

	/**
	 * @param updateType
	 */
	public CacheManager(int updateType) {
		super();
		this.updateType = updateType;
	}

	/* (non-Javadoc)
	 * @see java.lang.Thread#run()
	 */
	@Override
	public void run() {
		
	}
	
	

}
