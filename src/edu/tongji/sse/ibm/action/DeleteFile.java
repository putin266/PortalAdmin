package edu.tongji.sse.ibm.action;

import javax.activation.FileDataSource;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.ResDAO;
import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;

public class DeleteFile extends ActionSupport {
	private Integer id;
	private Integer fileId;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFileId() {
		return fileId;
	}

	public void setFileId(Integer fileId) {
		this.fileId = fileId;
	}

	public String execute(){
		HibernateUtil.deleteObject(ResDAO.getRes(fileId));
		return SUCCESS;
	}

}
