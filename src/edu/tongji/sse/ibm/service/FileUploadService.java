package edu.tongji.sse.ibm.service;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.dao.PicDAO;
import edu.tongji.sse.ibm.dao.ResDAO;
import edu.tongji.sse.ibm.pojo.News;
import edu.tongji.sse.ibm.pojo.Pic;
import edu.tongji.sse.ibm.pojo.Res;
import edu.tongji.sse.ibm.tools.ImageUtil;

public class FileUploadService {
	public static String uploadFiles(File[] upload_file,
			String[] upload_fileFileName, String sort, News news)
			throws IOException {
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
			if (sort != null) {
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

	public static String uploadPic(File upload_file,
			String upload_fileFileName, News news) throws IOException {
		if (upload_file == null) {
			return "error";
		}
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/res");
		try {
			ImageUtil.saveImageAsJpg(upload_file.getAbsolutePath(), realpath+"/"+upload_fileFileName, 135, 96);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Pic pic = new Pic();
		pic.setName(upload_fileFileName);
		pic.setURL("/PortalAdmin/res/"+upload_fileFileName);
		pic = (Pic) PicDAO.insert(pic);
		System.out.println(pic.getURL());
		news.setPic(pic);
		NewsDAO.updateNews(news);
		if (pic == null) {
			return "error";
		} else {
			return "success";
		}
	}

}
