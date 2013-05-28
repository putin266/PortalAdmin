package edu.tongji.sse.ibm.pojo;

public class Pic {
	private Integer id;
	private String name;
	private String URL;
	private String profile;
	private Album myAlbum;
	private Slider mySlider;
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
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public Album getMyAlbum() {
		return myAlbum;
	}
	public void setMyAlbum(Album myAlbum) {
		this.myAlbum = myAlbum;
	}
	public Slider getMySlider() {
		return mySlider;
	}
	public void setMySlider(Slider mySlider) {
		this.mySlider = mySlider;
	}

}
