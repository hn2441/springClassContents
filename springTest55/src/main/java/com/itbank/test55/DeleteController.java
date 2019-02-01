package com.itbank.test55;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DeleteController {
	
	@Autowired
	@Qualifier("dao")
	MemInterface memberDAO;

	@RequestMapping("delete.do")
	public void delete(@RequestParam("id") String id){
		try {
			System.out.println("DeleteController에 온 id값 : "+id);
			memberDAO.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
