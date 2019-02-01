package com.itbank.mvc0125;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {
	
	@Autowired
	@Qualifier("dao2")
	MemInterface memberDAO;

	@RequestMapping("insert.do")
	public void insert(MemberDTO memberDTO){
		try {
			memberDAO.insert(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
