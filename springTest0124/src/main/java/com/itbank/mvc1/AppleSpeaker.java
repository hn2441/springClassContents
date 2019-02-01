package com.itbank.mvc1;

public class AppleSpeaker implements Speaker {
	String color;
	int size;
	
	/* (non-Javadoc)
	 * @see com.itbank.mvc1.Speaker#soundUp()
	 */
	@Override
	public void soundUp(){
		System.out.println("애플 사운드업");
	}
	/* (non-Javadoc)
	 * @see com.itbank.mvc1.Speaker#soundDown()
	 */
	@Override
	public void soundDown(){
		System.out.println("애플 사운드 다운");
	}
}
