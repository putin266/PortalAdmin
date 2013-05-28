package edu.tongji.sse.ibm.service;

public class AccountService {
	
	public static boolean isAdmin(String username,String passwd){
		if(username.equals("root") && passwd.equals("root")){
			return true;
		}else{
			return false;
		}
	}

}
