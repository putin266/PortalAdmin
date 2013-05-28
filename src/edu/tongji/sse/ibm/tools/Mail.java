package edu.tongji.sse.ibm.tools;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Date;
import javax.activation.*;
import java.io.*;

public class Mail {
	private MimeMessage mimeMsg; // MIME�ʼ�����
	private Session session; // �ʼ��Ự����
	private Properties props; // ϵͳ����
	private boolean needAuth = false; // smtp�Ƿ���Ҫ��֤
	private String username = ""; // smtp��֤�û���������
	private String password = "";
	private Multipart mp; // Multipart����,�ʼ�����,����,���������ݾ���ӵ����к�������

	public Mail(String smtp) {
		setSmtpHost(smtp);
		createMimeMessage();
	}

	public void setSmtpHost(String hostName) {
		System.out.println("����ϵͳ���ԣ�mail.smtp.host = " + hostName);
		if (props == null){
			props = System.getProperties();// ���ϵͳ���Զ���
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
			props.setProperty("mail.smtp.socketFactory.fallback", "false"); 
			props.setProperty("mail.smtp.port", "465"); 
			props.setProperty("mail.smtp.socketFactory.port", "465"); 
		}
		props.put("mail.smtp.host", hostName); // ����SMTP����
	}

	public boolean createMimeMessage() {
		try {
			System.out.println("׼����ȡ�ʼ��Ự����");
			session = Session.getDefaultInstance(props, null); // ����ʼ��Ự����
		} catch (Exception e) {
			System.err.println("��ȡ�ʼ��Ự����ʱ��������" + e);
			return false;
		}
		System.out.println("׼������MIME�ʼ�����");
		try {
			mimeMsg = new MimeMessage(session); // ����MIME�ʼ�����
			mp = new MimeMultipart(); // mp һ��multipart����
			// Multipart is a container that holds multiple body parts.
			return true;
		} catch (Exception e) {
			System.err.println("����MIME�ʼ�����ʧ�ܣ�" + e);
			return false;
		}
	}

	public void setNeedAuth(boolean need) {
		System.out.println("����smtp�����֤��mail.smtp.auth = " + need);
		if (props == null)
			props = System.getProperties();
		if (need) {
			props.put("mail.smtp.auth", "true");
		} else {
			props.put("mail.smtp.auth", "false");
		}
	}

	public void setNamePass(String name, String pass) {
		System.out.println("����õ��û���������");
		username = name;
		password = pass;
	}

	public boolean setSubject(String mailSubject) {
		System.out.println("�����ʼ����⣡");
		try {
			mimeMsg.setSubject(mailSubject);
			return true;
		} catch (Exception e) {
			System.err.println("�����ʼ����ⷢ������");
			return false;
		}
	}

	public boolean setBody(String mailBody) {
		try {
			System.out.println("�����ʼ����ʽ");
			BodyPart bp = new MimeBodyPart();
			// ת�������ĸ�ʽ
			bp.setContent(
					"<meta http-equiv=Content-Type content=text/html; charset=gb2312>"
							+ mailBody, "text/html;charset=GB2312");
			mp.addBodyPart(bp);
			return true;
		} catch (Exception e) {
			System.err.println("�����ʼ�����ʱ��������" + e);
			return false;
		}
	}

	public boolean addFileAffix(String filename) {
		System.out.println("�����ʼ�������" + filename);
		try {
			BodyPart bp = new MimeBodyPart();
			FileDataSource fileds = new FileDataSource(filename);
			bp.setDataHandler(new DataHandler(fileds));
			bp.setFileName(fileds.getName());
			mp.addBodyPart(bp);
			return true;
		} catch (Exception e) {
			System.err.println("�����ʼ�������" + filename + "��������" + e);
			return false;
		}
	}

	public boolean setFrom(String from) {
		System.out.println("���÷����ˣ�");
		try {
			mimeMsg.setFrom(new InternetAddress(from)); // ���÷�����
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean setTo(String to) {
		System.out.println("����������");
		if (to == null)
			return false;
		try {
			mimeMsg.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(to));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean setCopyTo(String copyto) {
		System.out.println("���͸�����");
		if (copyto == null)
			return false;
		try {
			mimeMsg.setRecipients(Message.RecipientType.CC,
					(Address[]) InternetAddress.parse(copyto));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public boolean sendout() {
		try {
			mimeMsg.setContent(mp);
			mimeMsg.saveChanges();
			System.out.println("���ڷ����ʼ�....");
			Session mailSession = Session.getInstance(props, null);
			Transport transport = mailSession.getTransport("smtp");
			transport.connect((String) props.get("mail.smtp.host"), username,
					password);
			transport.sendMessage(mimeMsg,
					mimeMsg.getRecipients(Message.RecipientType.TO));
			// transport.send(mimeMsg);
			System.out.println("�����ʼ��ɹ���");
			transport.close();
			return true;
		} catch (Exception e) {
			System.err.println("�ʼ�����ʧ�ܣ�" + e);
			return false;
		}
	}

}