package com.itbank.test0128;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CookShop2 {
	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("di.xml");
		CookManager manager = (CookManager) factory.getBean("CookManager");
		
		
	}
}
