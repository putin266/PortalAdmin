package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_res;

public class CDUG_resDAO {
	
	public static List<CDUG_res> getResList(){
		List<CDUG_res> list = HibernateUtil.executeQuery("from CDUG_res", null);
		return list;
	}

	public static CDUG_res insertRes(CDUG_res res) {
		if (HibernateUtil.saveObject(res)) {
			return res;
		} else {
			return null;
		}
	}

	public static CDUG_res updateRes(CDUG_res res) {
		if (HibernateUtil.updateObject(res)) {
			return res;
		} else {
			return null;
		}
	}

}
