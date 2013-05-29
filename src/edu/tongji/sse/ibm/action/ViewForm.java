package edu.tongji.sse.ibm.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.CDUG_signUpFormDAO;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;

public class ViewForm extends ActionSupport {

	private String beginTime;
	private String endTime;
	private static SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
	private List<CDUG_signUpForm> formlist;

	public List<CDUG_signUpForm> getFormlist() {
		return formlist;
	}

	public void setFormlist(List<CDUG_signUpForm> formlist) {
		this.formlist = formlist;
	}

	public String getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String execute() {
		try {
			formlist = CDUG_signUpFormDAO.getFormList(sf.format(sf.parse(beginTime)
					).toString(), sf.format(sf.parse(endTime)).toString());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
}
