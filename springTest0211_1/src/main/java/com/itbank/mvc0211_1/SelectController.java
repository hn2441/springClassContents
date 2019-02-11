package com.itbank.mvc0211_1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelectController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("selectAll.do")
	public void selectAll(Model m) throws Exception{
		List<MemberDTO> list = dao.selectAll();
		m.addAttribute("list", list);
	}
	
}
