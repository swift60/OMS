package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import org.apache.log4j.Logger;

import com.OMS1.DataBean.DataBean;
import com.OMS1.util.DatabaseConnection;
import java.sql.ResultSet;

public class PackerManager implements Manager {
	
		DatabaseConnection dbconn = new DatabaseConnection();
		DatabaseConnection dbcon = new DatabaseConnection();
		static Logger log  = Logger.getLogger(ProductManager.class);

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
	public void packer(long x)
	{
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM DB2ADMIN.PICKER WHERE ORDER_NO="+x+" ");
		ResultSet rs = dbconn.executeQuery();
		try {
		while(rs.next())
		{
		dbcon.getConnection();
		log.debug("database connection made");
		dbcon.setQuery("INSERT INTO DB2ADMIN.PACKER (ORDER_NO,SADDRESS_ID,DATE,TIME) VALUES("+rs.getLong("ORDER_NO")+", "+rs.getInt("SADDRESS_ID")+", CURRENT DATE, CURRENT TIME) ");
        dbcon.executeUpdate();	
        deletepacker( x);
		}
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			// e.printStackTrace();
			
		} finally {
			dbconn.closeDB();
			dbcon.closeDB();
		}
	}
	public ResultSet disporderpacker() {

		 
		 
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("SELECT * FROM DB2ADMIN.PACKER AS PACKER  ");
		ResultSet rs = dbconn.executeQuery();
		return rs;
	}
	public void deletepacker(long x)
	{
		
		
		
		dbconn.getConnection();
		log.debug("database connection made");
		try{
		
			
		dbconn.setQuery("DELETE FROM DB2ADMIN.PICKER  WHERE PICKER.ORDER_NO ="+x+"       ");
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
}
