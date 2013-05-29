package edu.tongji.sse.ibm.pojo;

import java.util.Date;
import java.util.Set;

public class News {
	private Integer id;
	private String title;
	private String content;
	private Date createTime;
	private Pic pic;;
	private String sort;
	private Set<Res> resources;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public Set<Res> getResources() {
		return resources;
	}
	public void setResources(Set<Res> resources) {
		this.resources = resources;
	}
	public Pic getPic() {
		return pic;
	}
	public void setPic(Pic pic) {
		this.pic = pic;
	}
}
