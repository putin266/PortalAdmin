package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.Edu_courseInfo;

public class Edu_courseInfoDAO {
	public static List<Edu_courseInfo> getlist(){
		return HibernateUtil.executeQuery("from Edu_courseInfo", null);
	}
	
	public static Edu_courseInfo getInfo(int id){
		Edu_courseInfo info = new Edu_courseInfo();
		String[] params = {"" + id};
		info = (Edu_courseInfo) HibernateUtil.uniqueQuery(
				"from Edu_courseInfo where id=?", params);
		return info;
	}

	public static Edu_courseInfo insertInfo(Edu_courseInfo info) {
		if (HibernateUtil.saveObject(info)) {
			return info;
		} else {
			return null;
		}
	}

	public static Edu_courseInfo updateInfo(Edu_courseInfo info) {
		if (HibernateUtil.updateObject(info)) {
			return info;
		} else {
			return null;
		}
	}

}
