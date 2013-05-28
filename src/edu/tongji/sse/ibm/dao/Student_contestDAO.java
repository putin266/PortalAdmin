package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.Student_contest;

public class Student_contestDAO {
	public static Student_contest getContest(int id){
		Student_contest contest = new Student_contest();
		String[] params = {"" + id};
		contest = (Student_contest) HibernateUtil.uniqueQuery(
				"from Student_contest where id=?", params);
		return contest;
	}
	
	public static List<Student_contest> getList(){
		return HibernateUtil.executeQuery("from Student_contest",null);
	}

	public static Student_contest insertContest(Student_contest contest) {
		if (HibernateUtil.saveObject(contest)) {
			return contest;
		} else {
			return null;
		}
	}

	public static Student_contest updateContest(Student_contest contest) {
		if (HibernateUtil.updateObject(contest)) {
			return contest;
		} else {
			return null;
		}
	}

}
