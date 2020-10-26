package com.kg.myapp.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class EncryptorMain {

	public static void main(String[] args) {

		
		StandardPBEStringEncryptor enc = new StandardPBEStringEncryptor();
		
		enc.setPassword("1234"); //내가 설정해준 비밀번호
		
		//jdbc.properties 정보 넣기 
		System.out.println("ENC(" + enc.encrypt("net.sf.log4jdbc.DriverSpy")+")");
		System.out.println("ENC(" + enc.encrypt("jdbc:log4jdbc:oracle:thin:@localhost:1521/xepdb1")+")");
		System.out.println("ENC(" + enc.encrypt("hr")+")");
		System.out.println("ENC(" + enc.encrypt("hr")+")");
		
		//1. 먼저 실행 후 콘솔 내용을 한줄씩 jdbc.properties에 넣어준다.
	}

}
