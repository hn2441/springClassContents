package com.itbank.mvc1;

public class BlueCar2 {
	Speaker speaker;
	
	
	public BlueCar2(Speaker speaker) {
		//super(); object인 경우는 default
		this.speaker = speaker;
	}




	public void soundUp(){
		speaker.soundUp();
	}
}
