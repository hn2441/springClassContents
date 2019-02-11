package com.itbank.mvc0211_2;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mdao")
public class MemberDAO implements DaoInterface {
	//DAO == Member테이블 DB를 처리할 수 있는 클래스
	
	@Autowired
	SqlSessionTemplate myBatis;
	
	@Override
	public void insert(DtoInterface dto) throws Exception {
		myBatis.insert("member.insert", dto);	//member : member.xml 파일의 namespace
	}
	
	@Override
	public void update(DtoInterface dto) throws Exception {
		myBatis.update("member.update", dto);
	}
	
	@Override
	public void delete(DtoInterface dto) throws Exception {
		myBatis.delete("member.delete", dto);
	}
	
	@Override
	public MemberDTO select(DtoInterface dto) throws Exception {	
		return myBatis.selectOne("member.select", dto);
	}
	
	@Override
	public List<DtoInterface> selectAll() throws Exception {
		return myBatis.selectList("member.selectAll");
	}

}
