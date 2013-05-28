package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.Res;

public class ResDAO {
	
	public static List<Res> getResList(){
		List<Res> list = HibernateUtil.executeQuery("from Res", null);
		return list;
	}
	
	public static Res getRes(int id){
		Res res = new Res();
		String[] params = {"" + id};
		res = (Res) HibernateUtil.uniqueQuery(
				"from Res where id=?", params);
		return res;	
		}

	public static Res insertRes(Res res) {
		if (HibernateUtil.saveObject(res)) {
			return res;
		} else {
			return null;
		}
	}

	public static Res updateRes(Res res) {
		if (HibernateUtil.updateObject(res)) {
			return res;
		} else {
			return null;
		}
	}

}
