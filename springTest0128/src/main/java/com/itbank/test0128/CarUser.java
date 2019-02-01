package com.itbank.test0128;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CarUser {

	public static void main(String[] args) {
		AbstractApplicationContext factory = 
				new GenericXmlApplicationContext("di.xml");
		
		Car car = (Car) factory.getBean("red");
		car.soundUp();
		car.soundDown();
	}

}
