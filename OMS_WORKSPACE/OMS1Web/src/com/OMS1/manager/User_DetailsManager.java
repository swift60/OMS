/**
 * 
 */
package com.OMS1.manager;

import java.util.Hashtable;
import java.util.Vector;



import com.OMS1.DataBean.CustomerBean;
import com.OMS1.DataBean.User_DetailsBean;

import com.OMS1.DataBean.DataBean;



import java.sql.ResultSet;
import java.sql.SQLException;



import org.apache.log4j.Logger;




import com.OMS1.util.DatabaseConnection;





/**
 * @author INORBIT
 *
 */
public class User_DetailsManager implements Manager {
	
	public static Hashtable<String, User_DetailsBean> userCredsCache = new Hashtable<String, User_DetailsBean>();
	public static Hashtable<String, User_DetailsBean> userProfileCache = new Hashtable<String, User_DetailsBean>();
	
	static DatabaseConnection dbconn = new DatabaseConnection();
	static Logger log  = Logger.getLogger(User_DetailsManager.class);
	private static Hashtable<String, User_DetailsBean> usernameCredsCache;
	
	
	
	public boolean login(String username,String password)
	{
	String pwd="";
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from USER_DETAILS where USERNAME='"+ username+"'");
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




public int register(User_DetailsBean ubean) {
	 int i=0;
		dbconn.getConnection();
		log.debug("database connection made");
		try{
			
			
		dbconn.setQuery("INSERT INTO DB2ADMIN.USER_DETAILS (USERNAME, EMAILID, PASSWORD, CONTACT_NO, ROLE_ID, ADDRESS, U_NAME ) VALUES ('"+ubean.getUSERNAME()+"', '"+ubean.getEMAILID()+"', '"+ubean.getPASSWORD()+"', "+ubean.getCONTACT_NO()+", "+ubean.getROLE_ID()+", '"+ubean.getADDRESS()+"', '"+ubean.getU_NAME()+"')      ");
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


public User_DetailsBean getdetails(String username) {

	User_DetailsBean usercreds = new User_DetailsBean();
	
	
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from USER_DETAILS where USERNAME='"+ username+"'");
	ResultSet rs = dbconn.executeQuery();
	try {
		if (rs.next()) {
			usercreds.setU_ID(Integer.parseInt(rs.getString("U_ID")));
			usercreds.setU_NAME(rs.getString("U_NAME"));
			usercreds.setADDRESS(rs.getString("ADDRESS"));
			usercreds.setCONTACT_NO(Integer.parseInt(rs.getString("CONTACT_NO")));
			usercreds.setEMAILID(rs.getString("EMAILID"));
			usercreds.setUSERNAME(rs.getString("USERNAME"));
			usercreds.setPASSWORD(rs.getString("PASSWORD"));
			usercreds.setROLE_ID(Integer.parseInt(rs.getString("ROLE")));
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

public void updateProfileCache(User_DetailsBean ubean) {
	
	User_DetailsBean usercreds = new User_DetailsBean();

	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from userCreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			
			usercreds.setU_ID(Integer.parseInt(rs.getString("U_ID")));
			usercreds.setU_NAME(rs.getString("U_NAME"));
			
			usercreds.setCONTACT_NO(Long.parseLong(rs.getString("CONTACT_NO")));
			usercreds.setROLE_ID(Integer.parseInt(rs.getString("ROLE_ID")));
			usercreds.setEMAILID(rs.getString("EMAILID"));
			usercreds.setUSERNAME(rs.getString("USERNAME"));
			usercreds.setPASSWORD(rs.getString("PASSWORD"));
			usercreds.setADDRESS(rs.getString("ADDRESS"));
			
			
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

	User_DetailsBean usercreds = new User_DetailsBean();
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("Select * from userCreds");
	ResultSet rs = dbconn.executeQuery();
	try {
		while (rs.next()) {
			
			usercreds.setU_ID(Integer.parseInt(rs.getString("U_ID")));
			usercreds.setU_NAME(rs.getString("U_NAME"));
			
			//usercreds.setCONTACT_NO(Long.parseLong(rs.getString("CONTACT_NO")));
			usercreds.setROLE_ID(Integer.parseInt(rs.getString("ROLE_ID")));
			//usercreds.setEMAILID(rs.getString("EMAILID"));
			//usercreds.setUSERNAME(rs.getString("USERNAME"));
			//usercreds.setPASSWORD(rs.getString("PASSWORD"));
			//usercreds.setADDRESS(rs.getString("ADDRESS"));
			
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

public int updateprofile(String uname, User_DetailsBean ubean) {
	 
	int i=0; 
		
	dbconn.getConnection();
	log.debug("database connection made");
	try{
	
	dbconn.setQuery("UPDATE DB2ADMIN.USER_DETAILS SET U_NAME='"+ubean.getU_NAME()+"',ROLE_ID="+ubean.getROLE_ID()+" EMAILID='"+ubean.getEMAILID()+"', CONTACT_NO="+ubean.getCONTACT_NO()+" WHERE USERNAME='"+uname+"'      ");
	log.debug(dbconn.getQuery());
	i=dbconn.executeUpdate();
	User_DetailsManager mgr = new User_DetailsManager();
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
public ResultSet getuser() {

	 
	 
	dbconn.getConnection();
	log.debug("database connection made");
	dbconn.setQuery("SELECT * FROM DB2ADMIN.USER_DETAILS AS USER_DETAILS");
	ResultSet rs = dbconn.executeQuery();
	return rs;
	
	}
	
	public void deleteuser( int customer )
	{
		
		dbconn.getConnection();
		log.debug("database connection made");
		try{
		
			
		dbconn.setQuery("DELETE FROM DB2ADMIN.USER_DETAILS  WHERE U_ID ='"+customer+"'       ");
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
	public ResultSet getinfo(int username) {

		User_DetailsBean usercreds = new User_DetailsBean();
		
		
		dbconn.getConnection();
		log.debug("database connection made");
		dbconn.setQuery("Select * from USER_DETAILS where U_ID="+username+" ");
		ResultSet rs = dbconn.executeQuery();
			return rs;

			
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
}




