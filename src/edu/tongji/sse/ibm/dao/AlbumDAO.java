package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.pojo.Album;
public class AlbumDAO extends BaseDAO {
	
	public static Album getAlbum(int id) {
		return (Album) get(id, "Album");
	}

}
