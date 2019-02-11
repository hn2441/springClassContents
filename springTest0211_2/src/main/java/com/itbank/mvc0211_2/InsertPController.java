package com.itbank.mvc0211_2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertPController {

	@Autowired
	@Qualifier("pdao")
	DaoInterface dao;
	
	@RequestMapping("insertProduct.do")
	public void insert(ProductDTO productDTO) throws Exception {
		dao.insert(productDTO);
	}
}
