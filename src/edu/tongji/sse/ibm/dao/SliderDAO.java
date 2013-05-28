package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.pojo.Slider;


public class SliderDAO extends BaseDAO {
	public static Slider getSlider(int id) {
		return (Slider) get(id, "Slider");
	}
}
