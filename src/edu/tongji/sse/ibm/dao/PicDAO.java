package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.pojo.Pic;

public class PicDAO extends BaseDAO{
	public static Pic getPic(int id) {
		return (Pic) get(id, "Pic");
	}
}
