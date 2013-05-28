package edu.tongji.sse.ibm.pojo;

import java.util.Set;

import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class User {
	private Integer id;
	private String name;
	private String sex;
	private String username;
	private String passwd;
	
	private Set<CDUG_signUpForm> signUpForms;
	private Set<CDUG_res> myResources;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public Set<CDUG_signUpForm> getSignUpForms() {
		return signUpForms;
	}

	public void setSignUpForms(Set<CDUG_signUpForm> signUpForms) {
		this.signUpForms = signUpForms;
	}

	public Set<CDUG_res> getMyResources() {
		return myResources;
	}

	public void setMyResources(Set<CDUG_res> myResources) {
		this.myResources = myResources;
	}
	
	public String getEmail(){
		return PasswordCrypter.string_decrypt(getUsername());
	}


}
