package com.itbank.test0128;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CookShop {
	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("di2.xml");
		Coffee cafe = (Coffee) factory.getBean("coffee");
		
		cafe.start();
		
	}
}
