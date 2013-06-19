package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class SignUpManagePage extends ActionSupport {
	private List<ProfileSort> sortlist;
	public String execute(){
		sortlist = ProfileSortDAO.getSortList();
		return SUCCESS;		
	}
	public List<ProfileSort> getSortlist() {
		return sortlist;
	}
	public void setSortlist(List<ProfileSort> sortlist) {
		this.sortlist = sortlist;
	}

}
