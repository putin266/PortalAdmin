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
			// ���ļ�
			WritableWorkbook book = Workbook.createWorkbook(new File(
					realpath + "/" + filename + ".xls"));
			// ������Ϊ����һҳ���Ĺ���������0��ʾ���ǵ�һҳ
			WritableSheet sheet = book.createSheet("��һҳ ", 0);
			// ��Label����Ĺ�������ָ����Ԫ��λ���ǵ�һ�е�һ��(0,0)
			// �Լ���Ԫ������Ϊtest
			for (int i = 0; i < list.size(); i++) {
				Label lname = new Label(0, i, list.get(i).getName());
				Label lemail = new Label(1, i, list.get(i).getEmail());
				Label lcompany = new Label(2, i, list.get(i).getCompany());
				Label lcomadd = new Label(3, i, list.get(i).getCom_address());
				Label lpcode = new Label(4, i, list.get(i).getCom_postCode());
				Label lsex = new Label(5, i, list.get(i).getSex());
				Label lphone = new Label(6, i, list.get(i).getPhone());

				// ������õĵ�Ԫ����ӵ���������
				sheet.addCell(lname);
				sheet.addCell(lemail);
				sheet.addCell(lcompany);
				sheet.addCell(lcomadd);
				sheet.addCell(lpcode);
				sheet.addCell(lsex);
				sheet.addCell(lphone);
			}
			/*
			 * ����һ���������ֵĵ�Ԫ�� ����ʹ��Number��������·�����������﷨���� ��Ԫ��λ���ǵڶ��У���һ�У�ֵΪ789.123
			 */
			// Number number = new Number(1, 0, 555.12541);
			// sheet.addCell(number);
			// д�����ݲ��ر��ļ�
			book.write();
			book.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
