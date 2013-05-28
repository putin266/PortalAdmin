package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.Portal_info;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class ProfileEdit extends ActionSupport {
	private String sortname;
	private String content;
	private List<ProfileSort> sortlist;
	
	public String getSortname() {
		return sortname;
	}

	public void setSortname(String sortname) {
		this.sortname = sortname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public List<ProfileSort> getSortlist() {
		return sortlist;
	}

	public void setSortlist(List<ProfileSort> sortlist) {
		this.sortlist = sortlist;
	}

	public String execute(){
		sortlist = ProfileSortDAO.getSortList();
		Portal_info info = Portal_infoDAO.getInfo(sortname);
		content = info.getContent();
		return SUCCESS;
	}

}
