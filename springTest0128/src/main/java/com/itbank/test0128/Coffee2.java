package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component
public class Coffee2 {
	
	Cal cal;
	GreenCar green;
	int price;
	
	public void setCal(Cal cal) {
		this.cal = cal;
	}

	public void setGreen(GreenCar green) {
		this.green = green;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	public Coffee2() {
		
	}

	public Coffee2(Cal cal, GreenCar green, int price) {
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
