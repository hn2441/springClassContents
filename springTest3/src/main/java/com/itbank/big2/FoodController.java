package com.itbank.big2;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	@RequestMapping("food")
	public void food(){
		System.out.println("좋아하는 음식이 많아요");
	}
}
