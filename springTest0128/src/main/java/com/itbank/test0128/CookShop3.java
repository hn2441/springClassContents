package com.itbank.test0128;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CookShop3 {
	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("di2.xml");
		Coffee2 coffee2 = (Coffee2) factory.getBean("coffee2");
		
		coffee2.start();
		
	}
}
