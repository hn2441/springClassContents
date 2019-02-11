package com.itbank.mvc0211_2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelectController {
	
	@Autowired
	@Qualifier("mdao")
	DaoInterface dao;
	
	@RequestMapping("selectAll.do")
	public void selectAll(Model m) throws Exception{
		List<DtoInterface> list = dao.selectAll();
		MemberDTO dto = null;
		//넘어온 값 확인
		for (int i = 0; i < list.size(); i++) {
			dto = (MemberDTO)list.get(i);
			System.out.println(dto.getId());
			System.out.println(dto.getPw());
			System.out.println(dto.getName());
			System.out.println(dto.getTel());
		}
		m.addAttribute("list", list);
	}
	
}
