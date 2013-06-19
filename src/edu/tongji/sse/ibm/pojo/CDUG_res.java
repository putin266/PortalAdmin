package edu.tongji.sse.ibm.pojo;

import java.util.Date;

public class CDUG_res {
	private Integer id;
	private String name;
	private String profile;
	private String URL;
	private Date uploadDate;
	private User creater;
	private Integer year;
	private CDUG_resSort sort;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getURL() {
		return URL;
	}

	public void setURL(String uRL) {
		URL = uRL;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public User getCreater() {
		return creater;
	}

	public void setCreater(User creater) {
		this.creater = creater;
	}
	public CDUG_resSort getSort() {
		return sort;
	}

	public void setSort(CDUG_resSort sort) {
		this.sort = sort;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}
}
