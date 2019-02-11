package com.itbank.mvc0211_1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert.do")
	public void insert(MemberDTO memberDTO) throws Exception {
		dao.insert(memberDTO);
	}
}
