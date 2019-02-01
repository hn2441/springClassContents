package com.itbank.mvc0125;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DeleteController {
	
	@Autowired
	MemberDAO memberDAO;

	@RequestMapping("delete.do")
	public void insert(MemberDTO memberDTO){
		try {
			memberDAO.delete(memberDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
