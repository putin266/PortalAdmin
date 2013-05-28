package edu.tongji.sse.ibm.service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import edu.tongji.sse.ibm.dao.ResDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.Res;

public class FileUploadService {
	public static String uploadFiles(File[] upload_file, String[] upload_fileFileName,
			String sort, News news) throws IOException {
		if (upload_file == null) {
			return "error";
		}
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/res");
		Res resource = new Res();

		for (int i = 0; i < upload_file.length; i++) {

			File saveFile = new File(new File(realpath), upload_fileFileName[i]);
			if (!saveFile.getParentFile().exists())
				saveFile.getParentFile().mkdirs();
			FileUtils.copyFile(upload_file[i], saveFile);
			resource = new Res();
			resource.setName(upload_fileFileName[i]);
			resource.setCreateTime(new Timestamp(System.currentTimeMillis()));
			if(sort != null){
				resource.setSort(sort);				
			}
			resource.setURL("res/" + upload_fileFileName[i]);
			resource.setNews(news);
			resource = ResDAO.insertRes(resource);

		}
		if (resource == null) {
			return "error";
		} else {
			return "success";
		}
	}

	public static String uploadFile(File upload_file, String upload_fileFileName,
			String sort, String profile) throws IOException {
		if (upload_file == null) {
			return "error";
		}
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/res");
		Res resource = new Res();

		File saveFile = new File(new File(realpath), upload_fileFileName);
		if (!saveFile.getParentFile().exists())
			saveFile.getParentFile().mkdirs();
		FileUtils.copyFile(upload_file, saveFile);
		resource = new Res();
		resource.setName(upload_fileFileName);
		resource.setCreateTime(new Timestamp(System.currentTimeMillis()));
		resource.setSort(sort);
		resource.setURL("res/" + upload_fileFileName);
		resource.setProfile(profile);
		resource = ResDAO.insertRes(resource);
		if (resource == null) {
			return "error";
		} else {
			return "success";
		}
	}

}
