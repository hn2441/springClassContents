package com.itbank.test0128;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("blue")
public class BlueCar implements Car {
	
	@Autowired
	@Qualifier("apple")
	Speaker speaker;
	
	@Override
	public void soundUp() {
		speaker.soundUp();
	}

	@Override
	public void soundDown() {
		speaker.soundDown();
	}
}