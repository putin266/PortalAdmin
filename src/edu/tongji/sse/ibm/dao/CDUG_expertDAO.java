package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_expert;

public class CDUG_expertDAO {
	
	public static CDUG_expert getExpert(int id) {
		String[] params = { "" + id };
		CDUG_expert expert = (CDUG_expert) HibernateUtil.uniqueQuery(
				"from CDUG_expert where id=?", params);
		return expert;
	}
	
	
	public static List<CDUG_expert> getExpertList(){
		List<CDUG_expert> list = HibernateUtil.executeQuery("from CDUG_expert", null);
		return list;
	}
	
	public static CDUG_expert insertExpert(CDUG_expert expert) {
		if (HibernateUtil.saveObject(expert)) {
			return expert;
		} else {
			return null;
		}
	}

	public static CDUG_expert updateExpert(CDUG_expert expert) {
		if (HibernateUtil.updateObject(expert)) {
			return expert;
		} else {
			return null;
		}
	}

}
