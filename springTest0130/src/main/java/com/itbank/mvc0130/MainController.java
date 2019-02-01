package com.itbank.mvc0130;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
	
	@RequestMapping("result.do")
	public void result(@RequestParam("id") String id, 
						@RequestParam("pw") String pw,
						Model model){
		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
	}
}
