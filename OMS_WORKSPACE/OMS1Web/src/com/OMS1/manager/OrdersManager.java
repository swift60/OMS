/**
 * 
 */
package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.log4j.Logger;

import com.OMS1.DataBean.DataBean;
import com.OMS1.DataBean.OrdersBean;
import com.OMS1.DataBean.User_DetailsBean;

import com.OMS1.util.DatabaseConnection;

/**
 * @author db2admin
 *
 */
public class OrdersManager implements Manager {
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
	public int newbag(OrdersBean ubean, int sid) {
		 int i=0;
			dbconn.getConnection();
			log.debug("database connection made");
			try{
				
				
			dbconn.setQuery("INSERT INTO DB2ADMIN.ORDERS (CUSTOMER_ID, SADDRESS_ID,MODEL_NAME, BAG_ID, PRICE, QUANTITY,DATE, TOTAL ) VALUES ("+ubean.getCUSTOMER_ID()+", "+sid+",'"+ubean.getMODEL_NAME()+"', "+ubean.getBAG_ID()+", "+ubean.getPRICE()+", "+ubean.getQUANTITY()+",CURRENT DATE, "+ubean.getTOTAL()+")      ");
			log.debug(dbconn.getQuery());
			i=dbconn.executeUpdate();
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				log.error(e.getMessage());
				// e.printStackTrace();
				return i;       
			} finally {
				dbconn.closeDB();
			}
		
			return i;
		}
	public OrdersBean getdetails(int username) {

		OrdersBean usercreds = new OrdersBean();
		
		
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("Select * from ORDERS where SADDRESS_ID="+ username+"");
		ResultSet rs = dbconn.executeQuery();
		try {
			if (rs.next()) {
				usercreds.setMODEL_NAME(rs.getString("MODEL_NAME"));
				usercreds.setPRICE(Long.parseLong(rs.getString("PRICE")));
				usercreds.setQUANTITY(Integer.parseInt(rs.getString("QUANTITY")));
				usercreds.setTOTAL(Long.parseLong(rs.getString("TOTAL")));
				
				return usercreds;
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
	public ResultSet getdet(int id) {

		 
		 
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM DB2ADMIN.ORDERS AS ORDERS WHERE ORDERS.SADDRESS_ID = '"+id+"'");
		ResultSet brs = dbconn.executeQuery();
		return brs;
		
		}
}
