package com.itbank.test0128;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("manager")
public class CookManager {
	
	@Autowired	//1개일때는 그냥 받아옴  
	@Qualifier("chineseCook") //2개 이상일 경우에는 이것도 필요 
	ICook cook;
	
	public void order(){
		cook.makeRice();
		cook.makeSalad();
		cook.makeSoup();
		cook.makeSource();
	}
}
