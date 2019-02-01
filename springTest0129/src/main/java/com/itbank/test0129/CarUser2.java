package com.itbank.test0129;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CarUser2 {

	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("factory.xml");
		Car car = (Car)factory.getBean("red");
		car.soundUp();
	}
	
}
