/**
 * 
 */
package com.OMS1.manager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.log4j.Logger;

import com.OMS1.DataBean.AdminBean;
import com.OMS1.DataBean.CustomerBean;
import com.OMS1.DataBean.DataBean;
import com.OMS1.util.DatabaseConnection;









/**
 * @author INORBIT
 *
 */
public class CustomerManager implements Manager {
	
	public static Hashtable<String, CustomerBean> userCredsCache = new Hashtable<String, CustomerBean>();
	public static Hashtable<String, CustomerBean> userProfileCache = new Hashtable<String, CustomerBean>();
	static DatabaseConnection dbconn = new DatabaseConnection();
	static Logger log  = Logger.getLogger(CustomerManager.class);
	private static Hashtable<String, CustomerBean> usernameCredsCache;
	CacheManager cmgr = new CacheManager(1);
	
	
	public boolean login(String username,String password)
	{
	String pwd="";
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from CUSTOMER where USERNAME='"+ username+"'");
	ResultSet rs = dbconn.executeQuery();
	try {
		if(rs.next())
		{
			pwd=rs.getString("PASSWORD");
			log.debug("password retrived '"+password+"'");
		}else
		{
			return false;
		}
		
		if(pwd.equals(password))
		{
			return true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		log.error(e.getMessage());
		e.printStackTrace();
		return false;
	}finally
	{
		dbconn.closeDB();
	}
	
	
	

	return false;
		
	}




public int register(CustomerBean ubean) {
	 int i=0;
		dbconn.getConnection();
		log.debug("database connection made");
		try{
			
			
		dbconn.setQuery("INSERT INTO DB2ADMIN.CUSTOMER (USERNAME, EMAIL, PASSWORD, CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME,CONTACT,DOB,DATE) VALUES ('"+ubean.getUSERNAME()+"', '"+ubean.getEMAIL()+"', '"+ubean.getPASSWORD()+"','"+ubean.getCUSTOMER_FIRSTNAME()+"', '"+ubean.getCUSTOMER_LASTNAME()+"',"+ubean.getCONTACT()+",'"+ubean.getDOB()+"', CURRENT DATE )      ");
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

public boolean checkuser(String username){
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from CUSTOMER where USERNAME='"+ username+"'  ");
	ResultSet rs = dbconn.executeQuery();
	try{
		if(rs.next())
		{
			return true;
		}
		else
		{
			return false;
		}
		
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		log.error(e.getMessage());
		e.printStackTrace();
		return false;
	}finally
	{
		dbconn.closeDB();
	}
	
}
public CustomerBean getdetails(String username) {

	CustomerBean usercreds = new CustomerBean();
	
	
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM CUSTOMER WHERE USERNAME='"+ username+"'");
	ResultSet rs = dbconn.executeQuery();
	try {
		if (rs.next()) {
			usercreds.setCUSTOMER_ID(Integer.parseInt(rs.getString("CUSTOMER_ID")));
			usercreds.setCUSTOMER_FIRSTNAME(rs.getString("CUSTOMER_FIRSTNAME"));
			usercreds.setCUSTOMER_LASTNAME(rs.getString("CUSTOMER_LASTNAME"));
			usercreds.setEMAIL(rs.getString("EMAIL"));
			usercreds.setUSERNAME(rs.getString("USERNAME"));
			usercreds.setPASSWORD(rs.getString("PASSWORD"));
			usercreds.setCONTACT(Long.parseLong(rs.getString("CONTACT")));
			usercreds.setDOB(rs.getString("dob"));
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
public void updateProfileCache(CustomerBean ubean) {
	
	CustomerBean usercreds = new CustomerBean();

	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from userCreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			
			usercreds.setCUSTOMER_FIRSTNAME(rs.getString("CUSTOMER_FIRSTNAME"));
			usercreds.setCUSTOMER_LASTNAME(rs.getString("CUSTOMER_LASTNAME"));
			usercreds.setDOB(rs.getString("DOB"));
			usercreds.setCONTACT(Long.parseLong(rs.getString("CONTACT")));
			usercreds.setEMAIL(rs.getString("EMAIL"));
			usercreds.setUSERNAME(rs.getString("USERNAME"));
			usercreds.setPASSWORD(rs.getString("PASSWORD"));
			
			
			
			userProfileCache.put(usercreds.getUSERNAME().toUpperCase(), usercreds);
			log.debug("record found");
		}

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		log.error(e.getMessage());
		// e.printStackTrace();
	
	} finally {
		dbconn.closeDB();
	}


}
public static void updateCredsCache() {

	CustomerBean usercreds = new CustomerBean();
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from userCreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			usercreds.setCUSTOMER_FIRSTNAME(rs.getString("CUSTOMER_FIRSTNAME"));
			
			
			usercreds.setCONTACT(Long.parseLong(rs.getString("CONTACT")));
			usercreds.setEMAIL(rs.getString("EMAILID"));
			usercreds.setUSERNAME(rs.getString("USERNAME"));
			usercreds.setPASSWORD(rs.getString("PASSWORD"));
			
			usernameCredsCache.put(usercreds.getUSERNAME().toUpperCase(), usercreds);
			log.debug("record found");
			
		}

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		log.error(e.getMessage());
		// e.printStackTrace();
	
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
public int changepassword(CustomerBean ubean, String pwd, String newpwd){
	
	int i=0;
	String uname = ubean.getUSERNAME();
	dbconn.getConnection();
	log.debug("database connection made");
	
	try{
		
	dbconn.setQuery("UPDATE DB2ADMIN.Customer SET PASSWORD='"+newpwd+"' WHERE USERNAME='"+uname+"'      ");
	log.debug(dbconn.getQuery());
	i=dbconn.executeUpdate();
	CustomerManager mgr = new CustomerManager();
	ubean.setPASSWORD(newpwd);
	mgr.updateProfileCache(ubean);
		}catch (Exception e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			// e.printStackTrace();
			return i;       
		}
		finally {
		dbconn.closeDB();
	}
		return i;
	
}
public ResultSet forgot(String id) {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.CUSTOMER AS CUSTOMER WHERE CUSTOMER.EMAIL = '"+id+"' ");
	ResultSet brs = dbconn.executeQuery();
	return brs;
	
	}
}
