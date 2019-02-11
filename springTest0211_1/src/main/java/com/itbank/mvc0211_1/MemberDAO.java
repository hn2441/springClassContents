package com.itbank.mvc0211_1;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dao")
public class MemberDAO {
	//DAO == Member테이블 DB를 처리할 수 있는 클래스
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	public void insert(MemberDTO dto) throws Exception {
		myBatis.insert("member.insert", dto);	//member : member.xml 파일의 namespace
	}
	
	public void update(MemberDTO dto) throws Exception {
		myBatis.update("member.update", dto);
	}
	
	public void delete(MemberDTO dto) throws Exception {
		myBatis.delete("member.delete", dto);
	}
	
	public MemberDTO select(MemberDTO dto) throws Exception {	
		return myBatis.selectOne("member.select", dto);
	}
	
	public List<MemberDTO> selectAll() throws Exception {
		return myBatis.selectList("member.selectAll");
	}
}
