package com.itbank.test0128;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("red")
public class RedCar implements Car {

	@Autowired
	@Qualifier("banana")
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