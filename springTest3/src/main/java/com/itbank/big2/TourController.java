package com.itbank.big2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TourController {
	
	@RequestMapping("tour")
	public void tour(){
		System.out.println("여행을 갑시다");
	}
}
