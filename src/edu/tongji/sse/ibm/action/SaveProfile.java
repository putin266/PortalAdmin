package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.pojo.Portal_info;

public class SaveProfile extends ActionSupport {
	
	private String sortname;
	private String content;
	
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

	public String execute(){
		Portal_info info = Portal_infoDAO.getInfo(sortname);
		info.setContent(content);
		Portal_infoDAO.updateInfo(info);
		return SUCCESS;
	}

}
