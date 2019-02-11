package com.itbank.mvc0211_2;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SelectPController {
	
	@Autowired
	@Qualifier("pdao")
	DaoInterface dao;
	
	@RequestMapping("selectAllProduct.do")
	public void selectAll(Model m) throws Exception{
		List<DtoInterface> list = dao.selectAll();
		ProductDTO dto = null;
		//넘어온 값 확인
		for (int i = 0; i < list.size(); i++) {
			dto = (ProductDTO)list.get(i);
			System.out.println(dto.getPid());
			System.out.println(dto.getPname());
			System.out.println(dto.getPrice());
			System.out.println(dto.getStock());
		}
		m.addAttribute("list", list);
	}
	
}
