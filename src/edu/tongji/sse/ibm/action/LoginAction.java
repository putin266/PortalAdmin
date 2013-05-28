package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.service.AccountService;

public class LoginAction extends ActionSupport {

	private String username;
	private String password;
	private String errorMessage;

	public String execute() {
		if (AccountService.isAdmin(username, password)) {
			ActionContext.getContext().getSession().put("isLogin", "true");
			return SUCCESS;
		} else {
			ActionContext.getContext().getSession().put("isLogin", "false");
			return ERROR;
		}

	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
