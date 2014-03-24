/**
 * 
 */
package com.OMS1.manager;

import java.util.Vector;

import com.OMS1.DataBean.DataBean;

/**
 * @author db2admin
 *
 */
public interface Manager {
public DataBean get(int id);
public Vector get();
public DataBean get(String name);
public boolean add(DataBean db);
public boolean delete(DataBean db);
public boolean update(DataBean db);
}
