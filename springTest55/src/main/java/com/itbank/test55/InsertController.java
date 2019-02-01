package com.itbank.test55;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {
	
	@Autowired
	@Qualifier("dao")
	MemInterface memberDAO;

	@RequestMapping("insert")
	public void insert(MemberDTO memberDTO){
		try {
			memberDAO.insert(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
