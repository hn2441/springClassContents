package com.itbank.test0129;

import org.springframework.stereotype.Component;

public class RedCar2 implements Car {

	@Override
	public void soundUp() {
		System.out.println("red up");
	}

	@Override
	public void soundDown() {
		System.out.println("red down");
		
	}

}
