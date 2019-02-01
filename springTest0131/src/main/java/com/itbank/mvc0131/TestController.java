package com.itbank.mvc0131;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping("diary")
	public void diaryController(String date, String title, String content, Model model){
		model.addAttribute("date",date);
		model.addAttribute("title",title);
		model.addAttribute("content",content);
	}
	@RequestMapping("newDiary")
	public ModelAndView diaryController(String date, String title, String content, ModelAndView mav){
		ArrayList<String> list = new ArrayList<String>();
		list.add(date);
		list.add(title);
		list.add(content);
		
		
		mav.setViewName("newDiary");
		mav.addObject("list",list);
		
		return mav;
	}
	
	@RequestMapping("idCheck")
	public ModelAndView loginController(@RequestParam("userN") String id, ModelAndView mav){
		MemberDAO dao = new MemberDAO();
		try {
			if(dao.checkId(id)){
				mav.setViewName("ooo");
			}else{
				mav.setViewName("xxx");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mav;
	}
}
