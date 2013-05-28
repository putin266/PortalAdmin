package edu.tongji.sse.ibm.test;

import java.util.Date;

import edu.tongji.sse.ibm.dao.ResDAO;
import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.Res;
import edu.tongji.sse.ibm.pojo.News;

public class test_addNewsAndFiles {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Res Res = new Res();
		Res.setCreateTime(new Date(System.currentTimeMillis()));
		Res.setName("Res1");
		Res.setURL("ResURL1");
		ResDAO.insertRes(Res);
		
		Res.setCreateTime(new Date(System.currentTimeMillis()));
		Res.setName("Res2");
		Res.setURL("ResURL2");
		ResDAO.insertRes(Res);
		
		News news = new News();
		news.setContent("content1");
		news.setTitle("title1");
		news.setSort("cdug");
		news.setCreateTime(new Date(System.currentTimeMillis()));
		NewsDAO.insertNews(news);
		
		news.setContent("content2");
		news.setTitle("title2");
		news.setSort("cdug");
		news.setCreateTime(new Date(System.currentTimeMillis()));
		NewsDAO.insertNews(news);

	}

}
