package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component("banana")
public class BananaSpeaker implements Speaker {

	@Override
	public void soundUp() {
		System.out.println("banana up");
	}

	@Override
	public void soundDown() {
		System.out.println("banana down");
	}
}