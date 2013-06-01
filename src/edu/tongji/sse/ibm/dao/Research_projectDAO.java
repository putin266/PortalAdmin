package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.Research_project;

public class Research_projectDAO extends BaseDAO{
	
	public static List<Research_project> getProjectList(String sort){
		String[] params = {sort};
		return HibernateUtil.executeQuery("from Research_project where sort=?", params);
	}

}
