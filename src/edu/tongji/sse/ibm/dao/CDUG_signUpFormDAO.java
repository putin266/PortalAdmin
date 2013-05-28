package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;

public class CDUG_signUpFormDAO {
	public static CDUG_signUpForm getForm(int id) {
		String[] params = { "" + id };
		CDUG_signUpForm form = (CDUG_signUpForm) HibernateUtil.uniqueQuery(
				"from CDUG_signUpForm where id=?", params);
		return form;
	}
	
	public static List<CDUG_signUpForm> getFormList(){
		List<CDUG_signUpForm> list = HibernateUtil.executeQuery("from CDUG_signUpForm", null);
		return list;
	}

	public static CDUG_signUpForm insertForm(CDUG_signUpForm form) {
		if (HibernateUtil.saveObject(form)) {
			return form;
		} else {
			return null;
		}
	}

	public static CDUG_signUpForm updateForm(CDUG_signUpForm form) {
		if (HibernateUtil.updateObject(form)) {
			return form;
		} else {
			return null;
		}
	}

}
