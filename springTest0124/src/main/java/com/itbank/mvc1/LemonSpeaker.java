package com.itbank.mvc1;

public class LemonSpeaker implements Speaker {

	@Override
	public void soundUp() {
		System.out.println("레몬 업");
	}

	@Override
	public void soundDown() {
		System.out.println("레몬 다운");
	}

}
