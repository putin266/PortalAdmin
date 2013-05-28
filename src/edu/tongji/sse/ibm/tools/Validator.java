package edu.tongji.sse.ibm.tools;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator {
	private static Pattern emailer = Pattern
			.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
	private static String zipCodePattern = "[1-9]\\d{5}(?!\\d)";

	public static boolean isEmail(String email) {
		if (email.equals("") || email == null) {
			return false;
		} else if (email.endsWith(".con")) {
			return false;
		} else if (email.endsWith(".cm")) {
			return false;
		} else if (email.endsWith("@gmial.com")) {
			return false;
		} else if (email.endsWith("@gamil.com")) {
			return false;
		} else if (email.endsWith("@gmai.com")) {
			return false;
		}
		return emailer.matcher(email).matches();
	}

	// 验证邮政编码
	public static boolean isPostcode(String postcode) {
		if (postcode.matches(zipCodePattern)) {
			return true;
		} else {
			return false;
		}
	}

	// 判断电话
	public static boolean isTelephone(String phonenumber) {
		String phone = "0\\d{2,3}-\\d{7,8}";
		Pattern p = Pattern.compile(phone);
		Matcher m = p.matcher(phonenumber);
		return m.matches();
	}

	// 判断手机号
	public static boolean isMobileNO(String mobiles) {
		Pattern p = Pattern
				.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
		Matcher m = p.matcher(mobiles);
		return m.matches();
	}

}
