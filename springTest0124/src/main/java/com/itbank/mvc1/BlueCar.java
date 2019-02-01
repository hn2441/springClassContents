package com.itbank.mvc1;

public class BlueCar {
//	AppleSpeaker speaker;
	BananaSpeaker speaker;
	
	
	public BlueCar(BananaSpeaker speaker) {
		//super(); object인 경우는 default
		this.speaker = speaker;
	}




	public void soundUp(){
		speaker.volumeUp();
	}
}
