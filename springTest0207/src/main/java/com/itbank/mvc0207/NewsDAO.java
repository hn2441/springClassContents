package com.itbank.mvc0207;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class NewsDAO {
	Connection con;
	private void setting() throws Exception{
		// 1. 드라이버(connector) 셋팅
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB연결(->my서버설정+db명+id+pw)
		String url = "jdbc:mysql://localhost:3306/bigdata";
		String user = "root";
		String password = "1234";

		con = DriverManager.getConnection(url, user, password);

	}
	
	public void insert(NewsDTO dto) throws Exception {
		setting();

		// 3. SQL문 객체화
		String sql = "insert into news values (?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getLink());
		ps.setString(3, dto.getThumbnail());

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

/*
	public void update(NewsDTO dto) throws Exception {
		setting();
		
		// 3. SQL문 객체화
		String sql = "update news set pw = ?, name = ?, tel = ? where id = ? ";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(4, dto.getId());
		ps.setString(1, dto.getPw());
		ps.setString(2, dto.getName());
		ps.setString(3, dto.getTel());

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

	public void delete(String id) throws Exception {
		// 1. 드라이버(connector) 셋팅
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB연결(->my서버설정+db명+id+pw)
		String url = "jdbc:mysql://localhost:3306/bigdata";
		String user = "root";
		String password = "1234";

		Connection con = DriverManager.getConnection(url, user, password);

		// 3. SQL문 객체화
		String sql = "delete from news where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

	public ArrayList<NewsDTO> selectAll() throws Exception {
		// 1. 드라이버(connector) 셋팅
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB연결(->my서버설정+db명+id+pw)
		String url = "jdbc:mysql://localhost:3306/bigdata";
		String user = "root";
		String password = "1234";

		Connection con = DriverManager.getConnection(url, user, password);

		// 3. SQL문 객체화
		String sql = "select * from news";
		PreparedStatement ps = con.prepareStatement(sql);

		// 4. SQL문 실행 요청
		ResultSet rs = ps.executeQuery();
		System.out.println("start " + rs.getRow());

		// 해당 row index의 값이 존재하는가? 체크..
		// System.out.println(rs.first());
		// System.out.println(rs.absolute(1));

		// 해당 ResultSet의 갯수를 구하는 방법..==========
		// rs의 맨 끝으로 이동
		// rs.last();
		// 그 맨 끝의 getRow()를 출력
		// System.out.println("레코드의 갯수는 " + rs.getRow());

		NewsDTO dto = null;
		ArrayList<NewsDTO> list = new ArrayList();

		while (rs.next()) { // 커서를 옮겨서 레코드가 있는지 체크
			System.out.println("row: " + rs.getRow());
			dto = new NewsDTO();

			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			String tel = rs.getString(4);

			dto.setId(id);
			dto.setPw(pw);
			dto.setName(name);
			dto.setTel(tel);

			list.add(dto);
			System.out.println();
		}
		return list;
	}

	public NewsDTO select(String input) throws Exception {
		// 1. 드라이버(connector) 셋팅
		Class.forName("com.mysql.jdbc.Driver");

		// 2. DB연결(->my서버설정+db명+id+pw)
		String url = "jdbc:mysql://localhost:3306/bigdata";
		String user = "root";
		String password = "1234";

		Connection con = DriverManager.getConnection(url, user, password);

		// 3. SQL문 객체화
		String sql = "select * from news where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, input);

		// 4. SQL문 실행 요청
		ResultSet rs = ps.executeQuery();
		NewsDTO dto = null;
		while (rs.next()) { // 커서를 옮겨서 레코드가 있는지 체크
			dto = new NewsDTO();

			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			String tel = rs.getString(4);

			dto.setId(id);
			dto.setPw(pw);
			dto.setName(name);
			dto.setTel(tel);
		}
		return dto;
	}

*/
}