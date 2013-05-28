package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.News;

public class NewsDAO {
	
	public static List<News> getNewsList(String sort){
		String[] params = {"" + sort};
		List<News> list = HibernateUtil.executeQuery("from News where sort=?", params);
		return list;
	}
	
	public static List<News> getNewsList(String sort,int first,int max){
		String[] params = {"" + sort};
		List<News> list = HibernateUtil.executeQuery("from News where sort=? order by createTime desc", params,first,max);
		return list;

	}
	
	public static int getNewsCount(String sort){
		String[] params = {"" + sort};
        return ((Long)HibernateUtil.uniqueQuery(
        		"select count(*) from News where sort=?", params)).intValue();  
	}

	
	public static News getNews(int id){
		News news = new News();
		String[] params = {"" + id};
		news = (News) HibernateUtil.uniqueQuery(
				"from News where id=?", params);
		return news;
	}

	public static News insertNews(News news) {
		if (HibernateUtil.saveObject(news)) {
			return news;
		} else {
			return null;
		}
	}

	public static News updateNews(News news) {
		if (HibernateUtil.updateObject(news)) {
			return news;
		} else {
			return null;
		}
	}

}
