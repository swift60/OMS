/**
 * 
 */
package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.Hashtable;
import org.apache.log4j.Logger;
import com.OMS1.DataBean.ProductBean;
import com.OMS1.DataBean.DataBean;
import com.OMS1.util.DatabaseConnection;


/**
 * @author db2admin
 *
 */
public class ProductManager implements Manager {
	DatabaseConnection dbconn = new DatabaseConnection();
	static Logger log  = Logger.getLogger(ProductManager.class);

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#add(com.OMS1.DataBean.DataBean)
	 */
	@Override
	public boolean add(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#delete(com.OMS1.DataBean.DataBean)
	 */
	@Override
	public boolean delete(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#get(int)
	 */
	@Override
	public DataBean get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#get()
	 */
	@Override
	public Vector get() {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#get(java.lang.String)
	 */
	@Override
	public DataBean get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.OMS1.manager.Manager#update(com.OMS1.DataBean.DataBean)
	 */
	@Override
	public boolean update(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}
	public ProductBean getdetails(String id) {

		ProductBean prodcreds = new ProductBean();
		
		
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM PRODUCT WHERE PROD_ID= '"+id+"'");
		ResultSet rs = dbconn.executeQuery();
		try {
			if (rs.next()) {
				prodcreds.setPROD_ID(rs.getString("PROD_ID"));
				prodcreds.setPROD_NAME(rs.getString("PROD_NAME"));
				prodcreds.setDESCRIPTION(rs.getString("DESCRIPTION"));
				prodcreds.setCOST(Integer.parseInt(rs.getString("COST")));
				prodcreds.setCAT_ID(Integer.parseInt(rs.getString("CAT_ID")));
				prodcreds.setIMAGEPATH(rs.getString("IMAGEPATH"));
				return prodcreds;
						}
			else
			{
			return null;	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			// e.printStackTrace();
			return null;
		} finally {
			dbconn.closeDB();
		}
	}
}
