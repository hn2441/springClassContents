package com.itbank.mvc0207;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MockController {

	@Autowired
	MockDAO dao;
	
	@RequestMapping("mockInsert")
	public void insert(MockDTO mockDTO){
		try {
			dao.insert(mockDTO);
			System.out.println("mockinsert 컨트롤러 호출 확인 ok!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("mockSelect")
	public void select(@RequestParam String input, Model model){
		try {
			MockDTO dto = dao.select(input);
			model.addAttribute("dto",dto);
			
			System.out.println("mockSelect 컨트롤러 호출 확인 ok!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping("mockSelectAll")
	public void selectAll(ArrayList<MockDTO> list,Model model){
		try {
			list = dao.selectAll();
			model.addAttribute("list", list);
			System.out.println("mockSelectAll 컨트롤러 호출 확인 ok!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
