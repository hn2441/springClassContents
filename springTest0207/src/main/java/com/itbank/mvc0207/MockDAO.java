package com.itbank.mvc0207;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public class MockDAO {
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
	
	public void insert(MockDTO dto) throws Exception {
		setting();

		// 3. SQL문 객체화
		String sql = "insert into mock values (?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getFirst_name());
		ps.setString(3, dto.getLast_name());
		ps.setString(4, dto.getEmail());
		ps.setString(5, dto.getGender());
		ps.setString(6, dto.getIp_address());

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

	public void update(MockDTO dto) throws Exception {
		setting();
		
		// 3. SQL문 객체화
		String sql = "update mock set first_name = ? where id = ? ";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getFirst_name());
		ps.setString(3, dto.getLast_name());
		ps.setString(4, dto.getEmail());
		ps.setString(5, dto.getGender());
		ps.setString(6, dto.getIp_address());

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

	public void delete(String id) throws Exception {
		setting();

		// 3. SQL문 객체화
		String sql = "delete from mock where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);

		// 4. SQL문 실행 요청
		ps.executeUpdate();
		System.out.println("SQL문 요청 완료..");
	}

	public ArrayList<MockDTO> selectAll() throws Exception {
		// 3. SQL문 객체화
		String sql = "select * from mock";
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

		MockDTO dto = null;
		ArrayList<MockDTO> list = new ArrayList();
		while (rs.next()) { // 커서를 옮겨서 레코드가 있는지 체크
			System.out.println("row: " + rs.getRow());
			dto = new MockDTO();

			String id = rs.getString(1);
			String first_name = rs.getString(2);
			String last_name = rs.getString(3);
			String email = rs.getString(4);
			String gender = rs.getString(5);
			String ip_address = rs.getString(6);

			dto.setId(id);
			dto.setFirst_name(first_name);
			dto.setLast_name(last_name);
			dto.setEmail(email);
			dto.setGender(gender);
			dto.setIp_address(ip_address);

			list.add(dto);
			System.out.println("selectAll 성공");
		}
		return list;
	}

	public MockDTO select(String input) throws Exception {
		setting();

		// 3. SQL문 객체화
		String sql = "select * from mock where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, input);

		// 4. SQL문 실행 요청
		ResultSet rs = ps.executeQuery();
		MockDTO dto = null;
		while (rs.next()) { // 커서를 옮겨서 레코드가 있는지 체크
			dto = new MockDTO();

			String id = rs.getString(1);
			String first_name = rs.getString(2);
			String last_name = rs.getString(3);
			String email = rs.getString(4);
			String gender = rs.getString(5);
			String ip_address = rs.getString(6);

			dto.setId(id);
			dto.setFirst_name(first_name);
			dto.setLast_name(last_name);
			dto.setEmail(email);
			dto.setGender(gender);
			dto.setIp_address(ip_address);
			
			System.out.println("select 성공");
		}
		return dto;
	}

}