package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component
public class Coffee {
	
	Cal cal;
	GreenCar green;
	int price;
	
	public Coffee(Cal cal, GreenCar green, int price) {
		super();
		this.cal = cal;
		this.green = green;
		this.price = price;
	}
	
	public void start(){
		System.out.println("커피를 마십니다.");
		cal.add();
		cal.minus();
		green.run();
		System.out.println(price);
	}
}
