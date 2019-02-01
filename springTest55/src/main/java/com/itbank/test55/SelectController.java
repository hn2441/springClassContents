package com.itbank.test55;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SelectController {
	
	@Autowired
	@Qualifier("dao")
	MemInterface memberDAO;

	@RequestMapping("select.do")
	public String select(@RequestParam String id,Model model){
		try {
			MemberDTO dto = memberDAO.select(id);
			model.addAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "selectResult";
	}
	@RequestMapping("selectAll.do")
	public String selectAll(ArrayList<MemberDTO> list,Model model){
		try {
			list = memberDAO.selectAll();
			model.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "selectAllResult";
	}
	
}
