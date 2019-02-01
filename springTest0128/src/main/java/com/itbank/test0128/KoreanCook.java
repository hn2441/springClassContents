package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component	//koreanCook 자동생성시
//@Component("korea") 내가 정하고 싶을때
public class KoreanCook implements ICook {

	@Override
	public void makeRice() {
		System.out.println("한식 밥");
	}

	@Override
	public void makeSoup() {
		System.out.println("국");
	}

	@Override
	public void makeSalad() {
		System.out.println("상추");
	}

	@Override
	public void makeSource() {
		System.out.println("갈비찜소스");

	}

}
