/**
 * 
 */
package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.log4j.Logger;

import com.OMS1.DataBean.DataBean;
import com.OMS1.DataBean.Ship_AddressBean;
import com.OMS1.DataBean.User_DetailsBean;
import com.OMS1.util.DatabaseConnection;


/**
 * @author db2admin
 *
 */
public class Ship_AddressManager implements Manager {
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
	public void register(Ship_AddressBean ubean) {
		 
			dbconn.getConnection();
			log.debug("database connection made");
			try{
				
				
			dbconn.setQuery("INSERT INTO DB2ADMIN.SHIP_ADDRESS (HNO, CUSTOMER_ID,PINCODE, STREET, CITY, DISTRICT, STATE, LANDMARK ) VALUES ("+ubean.getHNO()+","+ubean.getCUSTOMER_ID()+","+ubean.getPINCODE()+" ,'"+ubean.getSTREET()+"', '"+ubean.getCITY()+"', '"+ubean.getDISTRICT()+"', '"+ubean.getSTATE()+"', '"+ubean.getLANDMARK()+"')      ");
			log.debug(dbconn.getQuery());
			dbconn.executeUpdate();
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				log.error(e.getMessage());
				// e.printStackTrace();
			     
			} finally {
				dbconn.closeDB();
			}
		
		
		}


	public Ship_AddressBean getshipdetails(int id)
	{
		
		Ship_AddressBean shipcreds = new Ship_AddressBean();
		
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("Select * from SHIP_ADDRESS where CUSTOMER_ID='"+ id+"'");
		ResultSet rs = dbconn.executeQuery();
		try {
			if (rs.next()) {
				shipcreds.setSADDRESS_ID(Integer.parseInt(rs.getString("SADDRESS_ID")));
				shipcreds.setHNO(Integer.parseInt(rs.getString("HNO")));
				shipcreds.setPINCODE(Long.parseLong(rs.getString("PINCODE")));
				shipcreds.setCITY(rs.getString("CITY"));
				shipcreds.setSTREET(rs.getString("STREET"));
				shipcreds.setDISTRICT(rs.getString("DISTRICT"));
				shipcreds.setSTATE(rs.getString("STATE"));
				shipcreds.setLANDMARK(rs.getString("LANDMARK"));
				return shipcreds;
	}
			else
			{
				return null;
			}

}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			// e.printStackTrace();
			return null;
		
		} finally {
			dbconn.closeDB();
		}


	}
	public ResultSet getship(int id) {

		 
		 
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM DB2ADMIN.SHIP_ADDRESS AS SHIP_ADDRESS WHERE SHIP_ADDRESS.CUSTOMER_ID = '"+id+"'");
		ResultSet brs = dbconn.executeQuery();
		return brs;
		
		}
	public ResultSet getshipaddress(int id) {

		 
		 
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM DB2ADMIN.SHIP_ADDRESS AS SHIP_ADDRESS WHERE SHIP_ADDRESS.SADDRESS_ID = '"+id+"'");
		ResultSet brs = dbconn.executeQuery();
		return brs;
		
		}
	public ResultSet getinfo(int username) {

		User_DetailsBean usercreds = new User_DetailsBean();
		
		
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("Select * from SHIP_ADDRESS where SADDRESS_ID="+username+" ");
		ResultSet rs = dbconn.executeQuery();
			return rs;
}
}