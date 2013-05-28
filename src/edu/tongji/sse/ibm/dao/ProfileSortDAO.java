package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class ProfileSortDAO {
	public static List<ProfileSort> getSortList() {
		return HibernateUtil.executeQuery("from ProfileSort", null);
	}

	public static ProfileSort insertSort(ProfileSort sort) {
		if (HibernateUtil.saveObject(sort)) {
			return sort;
		} else {
			return null;
		}
	}

	public static ProfileSort updateSort(ProfileSort sort) {
		if (HibernateUtil.updateObject(sort)) {
			return sort;
		} else {
			return null;
		}
	}

}
