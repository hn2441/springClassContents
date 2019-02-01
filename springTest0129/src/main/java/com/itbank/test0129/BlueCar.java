package com.itbank.test0129;

import org.springframework.stereotype.Component;

@Component("blue")
public class BlueCar implements Car {
	@Override
	public void soundUp() {
		System.out.println("blue up");
	}

	@Override
	public void soundDown() {
		System.out.println("blue down");
		
	}
}
