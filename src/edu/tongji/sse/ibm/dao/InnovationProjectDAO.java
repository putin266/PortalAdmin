package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.pojo.InnovationProject;

public class InnovationProjectDAO extends BaseDAO {
	
	public static InnovationProject getProject(){
		return (InnovationProject) getUnique("InnovationProject");
	}
	

}
