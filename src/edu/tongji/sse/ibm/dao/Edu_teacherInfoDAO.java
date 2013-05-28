package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.Edu_teacherInfo;

public class Edu_teacherInfoDAO {
	
	public static Edu_teacherInfo getInfo(int id){
		Edu_teacherInfo info = new Edu_teacherInfo();
		String[] params = {"" + id};
		info = (Edu_teacherInfo) HibernateUtil.uniqueQuery(
				"from Edu_teacherInfo where id=?", params);
		return info;
	}

	public static Edu_teacherInfo insertInfo(Edu_teacherInfo info) {
		if (HibernateUtil.saveObject(info)) {
			return info;
		} else {
			return null;
		}
	}

	public static Edu_teacherInfo updateInfo(Edu_teacherInfo info) {
		if (HibernateUtil.updateObject(info)) {
			return info;
		} else {
			return null;
		}
	}
	
	public static List getIdNameList(){
		return HibernateUtil.executeQuery("select id,name_ch from Edu_teacherInfo", null);
	}
	
	public static List<Edu_teacherInfo> getInfoList(){
		return HibernateUtil.executeQuery("from Edu_teacherInfo", null);
	}

}
