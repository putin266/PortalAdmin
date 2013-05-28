package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;

public class DeleteNews extends ActionSupport {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String execute(){
		HibernateUtil.deleteObject(NewsDAO.getNews(id));
		return SUCCESS;
	}

}
