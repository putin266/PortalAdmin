package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.ProfileSort;

public class NewsList extends ActionSupport {
	private String sort;
	private List<News> newslist;
	private List<ProfileSort> sortlist;

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public List<News> getNewslist() {
		return newslist;
	}

	public void setNewslist(List<News> newslist) {
		this.newslist = newslist;
	}

	public List<ProfileSort> getSortlist() {
		return sortlist;
	}

	public void setSortlist(List<ProfileSort> sortlist) {
		this.sortlist = sortlist;
	}

	public String execute() {
		if(sort == null){
			sort = "cdug";
		}
		newslist = NewsDAO.getNewsList(sort);
		sortlist = ProfileSortDAO.getSortList();
		return SUCCESS;
	}
}
