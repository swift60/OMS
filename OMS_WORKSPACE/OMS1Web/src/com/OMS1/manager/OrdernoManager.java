package com.OMS1.manager;

import java.util.Date;
import java.util.Vector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;


import org.apache.log4j.Logger;

import com.OMS1.DataBean.CustomerBean;
import com.OMS1.DataBean.DataBean;
import com.OMS1.DataBean.OrdernoBean;
import com.OMS1.DataBean.User_DetailsBean;
import com.OMS1.util.DatabaseConnection;


public class OrdernoManager implements Manager {
	DatabaseConnection dbconn = new DatabaseConnection();
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
public void genord(int id)
{
	dbconn.getConnection();
	log.debug("database connection made");
	try{
			
		dbconn.setQuery("INSERT INTO DB2ADMIN.ORDERNO (SADDRESS_ID, DATE,TIME) VALUES ("+id+",CURRENT DATE, CURRENT TIME )      ");
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
public ResultSet getorder(int id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.ORDERNO AS ORDERNO WHERE ORDERNO.SADDRESS_ID = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	
	}
public ResultSet disporder() {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.ORDERNO AS ORDERNO  ");
	ResultSet rs = dbconn.executeQuery();
	return rs;
}
	
public OrdernoBean getord(int username) {

	OrdernoBean usercreds = new OrdernoBean();
	
	
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM ORDERNO WHERE SADDRESS_ID="+ username+" ");
	ResultSet rs = dbconn.executeQuery();
	try {
		if (rs.next()) {
			usercreds.setORDER_NO(Long.parseLong(rs.getString("ORDER_NO")));
			//usercreds.setDATE(rs.getString("DATE"));
			//usercreds.setTIME(rs.getString("TIME"));
			//usercreds.setSADDRESS_ID(Integer.parseInt(rs.getString("SADDRESS_ID")));
			
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
public ResultSet trackoperator(long id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.ORDERNO AS ORDERNO WHERE ORDERNO.ORDER_NO = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	//WITH OPERATOR
	}
public ResultSet trackpicker(long id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.PICKER AS PICKER WHERE PICKER.ORDER_NO = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	//WITH PICKER
	}
public ResultSet trackpacker(long id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.PACKER AS PACKER WHERE PACKER.ORDER_NO = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	//WITH PACKER
	}
public ResultSet trackreport(long id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.REPORT AS REPORT WHERE REPORT.ORDER_NO = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	//WITH DELIVERED
	}

public ResultSet trackshipper(long id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.SHIPPER AS SHIPPER WHERE SHIPPER.ORDER_NO = "+id+" ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	//WITH SHIPPER
	}

}

