package org.cas.ext;

import org.jasig.cas.authentication.handler.DefaultPasswordEncoder;

public class Code {
	public static void main(String[] args) {
		// org.jasig.cas.adaptors.jdbc.QueryDatabaseAuthenticationHandler
		// org.jasig.cas.adaptors.jdbc.QueryDatabaseAuthenticationHandler
		String a = "123456";
		System.out.println(MD5Plus.encrypt(a));

		DefaultPasswordEncoder e = new DefaultPasswordEncoder("MD5");
		e.setCharacterEncoding("UTF-8");
		System.out.println(e.encode(a));
	}
}
