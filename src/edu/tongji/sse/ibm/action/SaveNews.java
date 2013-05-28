package edu.tongji.sse.ibm.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.service.FileUploadService;

public class SaveNews extends ActionSupport {
	
	private Integer id;
	private File[] uploadFile;
	private String[] uploadFileFileName;
	private String title;
	private String content;
	public String execute(){
		News news = NewsDAO.getNews(id);
		news.setTitle(title);
		news.setContent(content);
		news.setCreateTime(new Date(System.currentTimeMillis()));
		NewsDAO.updateNews(news);
		try {
			FileUploadService.uploadFiles(uploadFile, uploadFileFileName, null, news);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public File[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String[] getUploadFileFileName() {
		return uploadFileFileName;
	}
	public void setUploadFileFileName(String[] uploadFileFileName) {
		this.uploadFileFileName = uploadFileFileName;
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


}
