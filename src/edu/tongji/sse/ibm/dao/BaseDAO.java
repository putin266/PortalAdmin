package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;

public abstract class BaseDAO {
	
	public static Object get(int id,String table) {
		String[] params = { "" + id };
		Object obj= (Object) HibernateUtil.uniqueQuery(
				"from " + table + " where id=?", params);
		return obj;
	}
	
	public static Object getUnique(String table){
		return HibernateUtil.uniqueQuery("from " + table, null);
	}
	
	public static List<Object> getList(String table){
		return HibernateUtil.executeQuery("from " + table, null);
	}
	
	public static Object insert(Object obj) {
		if (HibernateUtil.saveObject(obj)) {
			return obj;
		} else {
			return null;
		}
	}

	public static Object update(Object obj) {
		if (HibernateUtil.updateObject(obj)) {
			return obj;
		} else {
			return null;
		}
	}

}
