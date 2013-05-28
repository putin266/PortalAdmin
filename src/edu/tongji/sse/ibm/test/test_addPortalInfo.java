package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.pojo.Portal_info;

public class test_addPortalInfo {
	public static void main(String[] args) {
		Portal_info info = new Portal_info();
		info.setName("test");
		info.setContent("testtesttesttesttesttest");
		Portal_infoDAO.insertInfo(info);
		
		info.setName("test2");
		info.setContent("test2test2test2test2test2test2");
		Portal_infoDAO.insertInfo(info);
	}

}
