package edu.tongji.sse.ibm.action;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.service.FileUploadService;

public class PublishNews extends ActionSupport {
	private String title;
	private String sort;
	private String content;
	private File[] uploadFile;
	private File pic;
	private String picFileName;
	private String[] uploadFileFileName;

	public String execute() {
		News news = new News();
		news.setContent(content);
		news.setTitle(title);
		news.setSort(sort);
		news.setCreateTime(new Date(System.currentTimeMillis()));
		NewsDAO.insertNews(news);
		try {
			FileUploadService.uploadFiles(uploadFile, uploadFileFileName, sort, news);
			FileUploadService.uploadPic(pic, picFileName, news);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public File getPic() {
		return pic;
	}

	public void setPic(File pic) {
		this.pic = pic;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}

}
