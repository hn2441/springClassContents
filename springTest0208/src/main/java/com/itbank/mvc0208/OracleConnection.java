package com.itbank.mvc0208;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class OracleConnection {
	public static void main(String[] args) throws Exception {
		//1.드라이버 설정
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("1. 드라이버 설정 ok!");
		
		//2.DB연결
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String user = "oracle";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB연결 OK...");
		
		//3.SQL문 객체화
		String sql = "insert into member values ('200','200','200','200')";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3.SQL문 객체화");
		
		//4.SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("4.SQL문 실행 요청");
	}
}
