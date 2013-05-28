package edu.tongji.sse.ibm.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.dao.ProfileSortDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.ProfileSort;
import edu.tongji.sse.ibm.pojo.Res;

public class EditNews extends ActionSupport {
	private Integer id;
	private String title;
	private String content;
	public Set<Res> getFilelist() {
		return filelist;
	}
	public void setFilelist(Set<Res> filelist) {
		this.filelist = filelist;
	}
	private Set<Res> filelist;
	private List<ProfileSort> sortlist;
	public String execute(){
		setSortlist(ProfileSortDAO.getSortList());
		News news = NewsDAO.getNews(id);
		setTitle(news.getTitle());
		content = news.getContent();
		filelist = news.getResources();
		return SUCCESS;
		
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}
