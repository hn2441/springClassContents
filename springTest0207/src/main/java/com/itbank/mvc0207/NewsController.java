package com.itbank.mvc0207;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {

	@Autowired
	NewsDAO dao;
	
	@RequestMapping("newsInsert")
	public void insert(NewsDTO newsDTO){
		try {
			dao.insert(newsDTO);
			System.out.println("뉴스 컨트롤러 호출 확인 ok!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
