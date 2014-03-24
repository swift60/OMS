package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;
import java.util.Vector;

import org.apache.log4j.Logger;


import com.OMS1.DataBean.BagBean;
import com.OMS1.DataBean.CustomerBean;
import com.OMS1.DataBean.DataBean;
import com.OMS1.util.DatabaseConnection;

public class BagManager implements Manager {
	
	/**
	 * @return the count
	 */
	
	/**
	 * @param count the count to set
	 */
	
	public static Hashtable<String, CustomerBean> userProfileCache = new Hashtable<String, CustomerBean>();
	static DatabaseConnection dbconn = new DatabaseConnection();
	static Logger log  = Logger.getLogger(CustomerManager.class);

	@Override
	public boolean add(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public DataBean get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vector get() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataBean get(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(DataBean db) {
		// TODO Auto-generated method stub
		return false;
	}
	public int register(BagBean ubean,String price,String quantity) {
		int QUANTITY;
		long PRICE;
		long TOTAL;
		PRICE=Long.parseLong(price);
		QUANTITY=Integer.parseInt(quantity);
		TOTAL=PRICE*QUANTITY;
		
		 int i=0;
			dbconn.getConnection();
			log.debug("database connection made");
			try{
				
				
			dbconn.setQuery("INSERT INTO DB2ADMIN.BAG ( MODEL_NAME, PRICE, QUANTITY, COLOR, TOTAL,CUSTOMER_ID) VALUES ( '"+ubean.getMODEL_NAME()+"', "+ubean.getPRICE()+","+ubean.getQUANTITY()+", '"+ubean.getCOLOR()+"',"+TOTAL+","+ubean.getCUSTOMER_ID()+" )      ");
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
	public BagBean getdetails(String customer_id) {

		BagBean bagcreds = new BagBean();
	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.BAG AS BAG WHERE BAG.CUSTOMER_ID = '"+customer_id+"'");
	ResultSet rs = dbconn.executeQuery();
	int i=0;
	try {
		if (rs.next()) {
			i++;
		    bagcreds.setCOUNT(i);
			bagcreds.setBAG_ID(Integer.parseInt(rs.getString("BAG_ID")));
			bagcreds.setMODEL_NAME(rs.getString("MODEL_NAME"));
			bagcreds.setCUSTOMER_ID(Integer.parseInt(rs.getString("CUSTOMER_ID")));
			bagcreds.setPRICE(Long.parseLong(rs.getString("PRICE")));
			bagcreds.setTOTAL(Long.parseLong(rs.getString("TOTAL")));
			bagcreds.setQUANTITY(Integer.parseInt(rs.getString("QUANTITY")));
			bagcreds.setCOLOR(rs.getString("COLOR"));
			return bagcreds;
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
	public int updateprofile(String uname, CustomerBean ubean) {
		 
		int i=0; 
			
		dbconn.getConnection();
		log.debug("database connection made");
		try{
		
		dbconn.setQuery("UPDATE DB2ADMIN.CUSTOMER SET CUSTOMER_FIRSTNAME='"+ubean.getCUSTOMER_FIRSTNAME()+"',CUSTOMER_LASTNAME='"+ubean.getCUSTOMER_LASTNAME()+"', EMAIL='"+ubean.getEMAIL()+"', CONTACT="+ubean.getCONTACT()+",DOB='"+ubean.getDOB()+"' WHERE USERNAME='"+uname+"'      ");
		log.debug(dbconn.getQuery());
		i=dbconn.executeUpdate();
		CustomerManager mgr = new CustomerManager();
		mgr.updateProfileCache(ubean);
		
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
	public int rem( BagBean ubean )
	{
		
		int i=0;
		
		dbconn.getConnection();
		log.debug("database connection made");
		try{
		
			
		dbconn.setQuery("DELETE FROM DB2ADMIN.BAG  WHERE BAG.BAG_ID ='"+ubean.getBAG_ID()+"'       ");
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
	
	public ResultSet getbag(int customer_id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.BAG AS BAG WHERE BAG.CUSTOMER_ID = '"+customer_id+"'");
	ResultSet rs = dbconn.executeQuery();
	return rs;
	
	}
	
	public int remove( int customer )
	{
		
		int i=0;
		
		dbconn.getConnection();
		log.debug("database connection made");
		try{
		
			
		dbconn.setQuery("DELETE FROM DB2ADMIN.BAG  WHERE BAG.CUSTOMER_ID ='"+customer+"'       ");
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
	
	
}