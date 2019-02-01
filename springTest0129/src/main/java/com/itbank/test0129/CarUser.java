package com.itbank.test0129;

public class CarUser {

	public static void main(String[] args) {
		FactoryBean factory = new FactoryBean();
		Car car = (Car)factory.getBean("red");
	}
	
}
