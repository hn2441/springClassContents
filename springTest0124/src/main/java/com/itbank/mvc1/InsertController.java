package com.itbank.mvc1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {
	
	
	@RequestMapping("insert.do")
	public String insert(MemberDTO memberDto){
		System.out.println("내가 호출 되었군요");
		MemberDAO dao = new MemberDAO();
		try {
			dao.insert(memberDto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:insert.jsp";
	}
	
	@RequestMapping("insert2.do")
	public void insert2(){
		System.out.println("내가 호출 되었군요");
	}
}
