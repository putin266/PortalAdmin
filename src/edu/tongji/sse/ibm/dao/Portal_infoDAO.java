package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.Portal_info;

public class Portal_infoDAO {
	public static Portal_info getInfo(int id){
		Portal_info info = new Portal_info();
		String[] params = {"" + id};
		info = (Portal_info) HibernateUtil.uniqueQuery(
				"from Portal_info where id=?", params);
		return info;
	}
	
	public static Portal_info getInfo(String name){
		Portal_info info = new Portal_info();
		String[] params = {"" + name};
		info = (Portal_info) HibernateUtil.uniqueQuery(
				"from Portal_info where name=?", params);
		return info;
	}

	public static Portal_info insertInfo(Portal_info info) {
		if (HibernateUtil.saveObject(info)) {
			return info;
		} else {
			return null;
		}
	}

	public static Portal_info updateInfo(Portal_info info) {
		if (HibernateUtil.updateObject(info)) {
			return info;
		} else {
			return null;
		}
	}

}
