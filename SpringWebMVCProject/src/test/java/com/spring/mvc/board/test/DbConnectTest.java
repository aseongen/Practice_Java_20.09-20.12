package com.spring.mvc.board.test;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class DbConnectTest {
	
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String UID = "week";
	private static final String UPW = "week";

	//커넥션 테스트
	@Test
	public void connectTest() {

		Connection conn = null;

		try {
			Class.forName(DRIVER);

			conn = DriverManager.getConnection(URL, UID, UPW);
			System.out.println("DB 커넥션 성공!");
			System.out.println("conn: " + conn);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}

}
