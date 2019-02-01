package com.itbank.test0129;

import org.springframework.stereotype.Component;

public class BlueCar2 implements Car {
	@Override
	public void soundUp() {
		System.out.println("blue up");
	}

	@Override
	public void soundDown() {
		System.out.println("blue down");
		
	}
}
