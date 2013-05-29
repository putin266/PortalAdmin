package edu.tongji.sse.ibm.service;

import java.io.File;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import edu.tongji.sse.ibm.dao.CDUG_signUpFormDAO;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

public class CDUG_exportEXCEL {

	public static boolean export(String filename,List<CDUG_signUpForm> list ) {
		try {
			String realpath = ServletActionContext.getServletContext().getRealPath(
					"/excel");
			// 打开文件
			WritableWorkbook book = Workbook.createWorkbook(new File(
					realpath + "/" + filename + ".xls"));
			// 生成名为“第一页”的工作表，参数0表示这是第一页
			WritableSheet sheet = book.createSheet("第一页 ", 0);
			// 在Label对象的构造子中指名单元格位置是第一列第一行(0,0)
			// 以及单元格内容为test
			for (int i = 0; i < list.size(); i++) {
				Label lname = new Label(0, i, list.get(i).getName());
				Label lemail = new Label(1, i, list.get(i).getEmail());
				Label lcompany = new Label(2, i, list.get(i).getCompany());
				Label lcomadd = new Label(3, i, list.get(i).getCom_address());
				Label lpcode = new Label(4, i, list.get(i).getCom_postCode());
				Label lsex = new Label(5, i, list.get(i).getSex());
				Label lphone = new Label(6, i, list.get(i).getPhone());

				// 将定义好的单元格添加到工作表中
				sheet.addCell(lname);
				sheet.addCell(lemail);
				sheet.addCell(lcompany);
				sheet.addCell(lcomadd);
				sheet.addCell(lpcode);
				sheet.addCell(lsex);
				sheet.addCell(lphone);
			}
			/*
			 * 生成一个保存数字的单元格 必须使用Number的完整包路径，否则有语法歧义 单元格位置是第二列，第一行，值为789.123
			 */
			// Number number = new Number(1, 0, 555.12541);
			// sheet.addCell(number);
			// 写入数据并关闭文件
			book.write();
			book.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
