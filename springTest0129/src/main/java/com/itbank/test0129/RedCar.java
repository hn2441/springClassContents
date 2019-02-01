package com.itbank.test0129;

import org.springframework.stereotype.Component;

@Component("red")
public class RedCar implements Car {

	@Override
	public void soundUp() {
		System.out.println("red up");
	}

	@Override
	public void soundDown() {
		System.out.println("red down");
		
	}

}
