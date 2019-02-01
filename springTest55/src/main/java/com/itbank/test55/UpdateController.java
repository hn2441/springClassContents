package com.itbank.test55;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UpdateController {
	
	@Autowired
	@Qualifier("dao")
	MemInterface memberDAO;

	@RequestMapping("update")
	public void insert(MemberDTO memberDTO){
		try {
			memberDAO.update(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
