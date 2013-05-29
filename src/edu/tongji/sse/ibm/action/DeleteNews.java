package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.News;

public class DeleteNews extends ActionSupport {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String execute(){
		News news = NewsDAO.getNews(id);
		HibernateUtil.deleteObject(news.getPic());
		HibernateUtil.deleteObject(news);
		return SUCCESS;
	}

}
