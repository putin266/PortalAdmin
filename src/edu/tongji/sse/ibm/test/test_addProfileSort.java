package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class test_addProfileSort {
	
	public static void main(String[] args){
		ProfileSort sort = new ProfileSort();
		sort.setName("TEST");
		sort.setSortname("test");
		ProfileSortDAO.insertSort(sort);
		
		sort.setName("TEST2");
		sort.setSortname("test2");
		ProfileSortDAO.insertSort(sort);
	}

}
