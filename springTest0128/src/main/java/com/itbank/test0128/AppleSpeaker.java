package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component("apple")
public class AppleSpeaker implements Speaker {

	@Override
	public void soundUp() {
		System.out.println("apple up");
	}

	@Override
	public void soundDown() {
		System.out.println("apple down");
	}
}