/**
 * 
 */
package com.OMS1.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.log4j.Logger;

import COM.ibm.db2.jdbc.app.DB2Connection;

import com.ibm.db2.jcc.b.db;



/**
 * @author The Adamants
 *
 */
public class DatabaseConnection {
	
	
	//String url = "jdbc:db2://localhost:8080/OMS1:";
	  
	private static Logger log = Logger.getLogger(DatabaseConnection.class);
	
	String dbdriver=PropertyLoader.getProperty("DBDRIVER");
	String dbConnString=PropertyLoader.getProperty("DBURL");
	String dbuser=PropertyLoader.getProperty("DBUSER");
	String dbpass=PropertyLoader.getProperty("DBPASSWD");
	
	Connection conn=null;
	Statement st=null;
	ResultSet resultSet=null;
	String query="";
	
	
	 	
	public void getConnection()
	{
		
		try {
			
			
			Class.forName(dbdriver).newInstance();
			log.debug("Database Driver Loaded :"+ dbdriver);
			conn= DriverManager.getConnection(dbConnString,dbuser,dbpass);
			log.debug("Database Connection created :"+ dbConnString + "  dbuser:"+ dbuser+ " dbpassword: "+dbpass);
			st = conn.createStatement();
			log.debug("Statement Created");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage(),e.getException());
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	
	

	public ResultSet executeQuery()
	{
		try {
			
			resultSet = st.executeQuery(query);
			log.debug("Query Executed:"+query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error(e.getMessage());
			e.printStackTrace();
		}
		
		return resultSet;
		
	}
	
	public int executeUpdate()
	{
		int updateCount=0;
		try {

			updateCount = st.executeUpdate(query);
			log.debug("Update Query Executed:"+query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return updateCount;
		
	}
	
	
	public void closeDB()
	{
		
		if(resultSet!=null)
		{
			try {
				resultSet.close();
				log.debug("Resultset closed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e.getMessage());
			}
		}
		
		if(st!=null)
		{
			try {
				st.close();
				log.debug("Statement closed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e.getMessage());
			}
		}
		
		
		
		if(conn!=null)
		{
			try {
				conn.close();
				log.debug("DB Connection closed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				log.error(e.getMessage());
			}
		}
		
		
	}


	/**
	 * @return the query
	 */
	public String getQuery() {
		return query;
	}




	/**
	 * @param query the query to set
	 */
	public void setQuery(String query) {
		this.query = query;
		log.debug("Query Set:"+query);
	}

	
	public static void main(String args[])
	{
		DatabaseConnection dbconn = new DatabaseConnection();
		dbconn.getConnection();
		dbconn.setQuery("select * from usercreds");
		ResultSet rs=dbconn.executeQuery();
		System.out.println(rs);
	}

	
	
	
	
	
	
	
	

}
