package edu.tongji.sse.ibm.dao;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.User;
import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class UserDAO {

	public static User getUser(int id) {
		String[] params = { "" + id };
		User user = (User) HibernateUtil.uniqueQuery("from User where id=?",
				params);
		return user;
	}
	
	public static User getUser(String email) {
		String encrypted_email = PasswordCrypter.getInstance().string_encrypt(email);
		String[] params = { "" + encrypted_email };
		User user = (User) HibernateUtil.uniqueQuery("from User where username=?",
				params);
		return user;
	}
	
	public static User getCurrentUser(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("userId");
		if(id == null){
			return null;
		}
		return getUser(id);
	}
	
	public static List<User> getUsers(String encryptedEmail){
		String[] params = {encryptedEmail};
		List<User> list = HibernateUtil.executeQuery("from User where User.email=?",params);
		return list;
	}

	public static User insertUser(String email, String passwd) {
		User user = new User();
		user.setUsername(email);
		user.setPasswd(passwd);
		if (HibernateUtil.saveObject(user)) {
			return user;
		} else {
			return null;
		}
	}
	
	public static User insertUser(User user){
		if (HibernateUtil.saveObject(user)) {
			return user;
		} else {
			return null;
		}
	}

	public static User updateUser(User user) {
		if (HibernateUtil.updateObject(user)) {
			return user;
		} else {
			return null;
		}
	}

}
