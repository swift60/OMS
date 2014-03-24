/**
 * 
 */
package com.OMS1.manager;

import com.OMS1.manager.CacheManager;
import java.util.Hashtable;
import java.util.Vector;

import com.OMS1.DataBean.AdminBean;

import com.OMS1.DataBean.DataBean;



import java.sql.ResultSet;
import java.sql.SQLException;



import org.apache.log4j.Logger;




import com.OMS1.util.DatabaseConnection;
import com.OMS1.manager.AdminManager;






/**
 * @author INORBIT
 *
 */
public class AdminManager implements Manager {
	
	public static Hashtable<String, AdminBean> admincredsCache = new Hashtable<String, AdminBean>();
	public static Hashtable<String, AdminBean> usernameCredsCache = new Hashtable<String, AdminBean>();
	public static Hashtable<String, AdminBean> userProfileCache = new Hashtable<String, AdminBean>();
	CacheManager cmgr =new CacheManager(1);
	static DatabaseConnection dbconn = new DatabaseConnection();
	static Logger log  = Logger.getLogger(AdminManager.class);

	
	
	public boolean login(String username,String password)
	{
	String pwd="";
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from ADMIN where USERNAME='"+ username+"'");
	ResultSet rs = dbconn.executeQuery();
	try {
		if(rs.next())
		{
			pwd=rs.getString("PASSWORD");
			log.debug("password retrived '"+pwd+"'");
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




public int register(AdminBean ubean) {
	 int i=0;
		dbconn.getConnection();
		log.debug("database connection made");
		try{
			
			
		dbconn.setQuery("INSERT INTO DB2ADMIN.ADMIN (USERNAME, EMAILID, PASSWORD, TEL_NO, EMP_NAME ) VALUES ('"+ubean.getUSERNAME()+"', '"+ubean.getEMAILID()+"', '"+ubean.getPASSWORD()+"', "+ubean.getTEL_NO()+",'"+ubean.getEMP_NAME()+"')      ");
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


public AdminBean getdetails(String username) {

	AdminBean admincreds = new AdminBean();
	
	
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from ADMIN where USERNAME='"+ username+"'");
	ResultSet rs = dbconn.executeQuery();
	try {
		if (rs.next()) {
			admincreds.setEMP_ID(Integer.parseInt(rs.getString("EMP_ID")));
			admincreds.setEMP_NAME(rs.getString("EMP_NAME"));
			
			admincreds.setTEL_NO(Long.parseLong(rs.getString("TEL_NO")));
			admincreds.setEMAILID(rs.getString("EMAILID"));
			admincreds.setUSERNAME(rs.getString("USERNAME"));
			admincreds.setPASSWORD(rs.getString("PASSWORD"));
			return admincreds;
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
public void updateProfileCache(AdminBean ubean) {
	
	AdminBean admincreds = new AdminBean();

	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from admincreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			admincreds.setEMP_ID(Integer.parseInt(rs.getString("EMP_ID")));
			admincreds.setEMP_NAME(rs.getString("EMP_NAME"));
			
			admincreds.setTEL_NO(Long.parseLong(rs.getString("TEL_NO")));
			admincreds.setEMAILID(rs.getString("EMAILID"));
			admincreds.setUSERNAME(rs.getString("USERNAME"));
			admincreds.setPASSWORD(rs.getString("PASSWORD"));
			
			
			userProfileCache.put(admincreds.getUSERNAME().toUpperCase(), admincreds);
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

	AdminBean admincreds = new AdminBean();
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from admincreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			admincreds.setEMP_ID(Integer.parseInt(rs.getString("EMP_ID")));
			admincreds.setEMP_NAME(rs.getString("EMP_NAME"));
			
			admincreds.setTEL_NO(Long.parseLong(rs.getString("TEL_NO")));
			admincreds.setEMAILID(rs.getString("EMAILID"));
			admincreds.setUSERNAME(rs.getString("USERNAME"));
			admincreds.setPASSWORD(rs.getString("PASSWORD"));
			
			usernameCredsCache.put(admincreds.getUSERNAME().toUpperCase(), admincreds);
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
public int updateprofile(String username, AdminBean ubean) {
	 
	int i=0; 
		
	dbconn.getConnection();
	log.debug("database connection made");
	try{
	
	dbconn.setQuery("UPDATE DB2ADMIN.ADMIN SET EMP_NAME='"+ubean.getEMP_NAME()+"', EMAILID='"+ubean.getEMAILID()+"', CONTACT_NO="+ubean.getTEL_NO()+" WHERE USERNAME='"+username+"'      ");
	log.debug(dbconn.getQuery());
	i=dbconn.executeUpdate();
	
	AdminManager mgr = new AdminManager();
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
public int changepassword(AdminBean ubean, String pwd, String newpwd){
	
	int i=0;
	String username = ubean.getUSERNAME();
	dbconn.getConnection();
	log.debug("database connection made");
	
	try{
		
	dbconn.setQuery("UPDATE DB2ADMIN.ADMIN SET PASSWORD='"+newpwd+"' WHERE USERNAME='"+username+"'      ");
	log.debug(dbconn.getQuery());
	i=dbconn.executeUpdate();
	
	ubean.setPASSWORD(newpwd);
	AdminManager mgr = new AdminManager();
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

}
