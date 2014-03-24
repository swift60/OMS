package com.OMS1.util;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sakeat.Gandotra
 */
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.StringTokenizer;
import java.util.Vector;

import org.apache.log4j.Logger;

/**
 * @author TeamEverest
 */
public class PropertyLoader {

	private static Logger log = Logger.getLogger(PropertyLoader.class);
	static Hashtable commonSettings = new Hashtable();
	static Hashtable student = new Hashtable();

	static {
		commonSettings = loadProperties("CommonSettings");
		student = loadProperties("student");
	}

	static Hashtable loadProperties(String bundleName) {

		
		Hashtable propertyTable = new Hashtable();
		try {
			PropertyResourceBundle appProps = (PropertyResourceBundle) PropertyResourceBundle.getBundle(bundleName);

			try {

				if (appProps != null) {
					Enumeration en = appProps.getKeys();
					while (en.hasMoreElements()) {
						String key = "";
						String val = "";
						key = (String) en.nextElement();
						if (!key.equals("") && key != null) {
							val = appProps.getString(key) == null ? "" : appProps.getString(key).trim();

							propertyTable.put(key, val);
							log.info(" Property Added to Messagetable, " + key + "=" + val);

							if (val.equals("")) {

								log.warn(" Found Empty property value for " + key);

							}

						}

					}
				}

			}
			catch (Exception e) {
				log.error( " Error reading property value in property resource bundle.Exception =" + e.toString());

			}
		}
		catch (MissingResourceException e) {

			log.error("Could not Initialize Property Resource Bundle");
		}
		return propertyTable;

	}

	public static String getProperty(String propertyName) {

		
			return (String) commonSettings.get(propertyName);
		
	}
	public static String getProperty1(String propertyName) {

		
		return (String) student.get(propertyName);
	
}

	public static void refreshProperties() {


		
		commonSettings = loadProperties("CommonSettings");
		

	}
	
	public static Vector parseCSV(String csvstring)
	{
		if(csvstring==null)
		{
			return null;
		}
		
		Vector vec=new Vector();
		StringTokenizer st = new StringTokenizer(csvstring,",");
		while (st.hasMoreTokens())
		{
			vec.add(st.nextToken());
		}
		return vec;
		
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		//PropertyLoader.getProperty("CommonSettings","BILLING_URL");
		System.out.println(PropertyLoader.getProperty("DBDRIVER"));
		System.out.println(PropertyLoader.getProperty1("CollegeName"));
		
		//refreshProperties();
		//System.out.println(PropertyLoader.getProperty("DBDRIVER"));
		
		
	}

}
