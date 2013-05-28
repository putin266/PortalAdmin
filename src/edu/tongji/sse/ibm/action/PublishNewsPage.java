package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class PublishNewsPage extends ActionSupport {
	private String sort;
	private List<ProfileSort> sortlist;
	
	public String execute(){
		setSortlist(ProfileSortDAO.getSortList());
		return SUCCESS;		
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public List<ProfileSort> getSortlist() {
		return sortlist;
	}

	public void setSortlist(List<ProfileSort> sortlist) {
		this.sortlist = sortlist;
	}
}
