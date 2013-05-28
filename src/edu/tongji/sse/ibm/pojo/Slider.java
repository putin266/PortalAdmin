package edu.tongji.sse.ibm.pojo;

import java.util.Set;

public class Slider {
	private Integer id;
	private String name;
	private String profile;
	private Set<Pic> pics;

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

	public Set<Pic> getPics() {
		return pics;
	}

	public void setPics(Set<Pic> pics) {
		this.pics = pics;
	}

}
