package com.itbank.test0128;

import org.springframework.stereotype.Component;

@Component //chineseCook 자동생성시
//@Component("china") 내가 만들고 싶을때
public class ChineseCook implements ICook {

	@Override
	public void makeRice() {
		System.out.println("볶음밥");
	}

	@Override
	public void makeSoup() {
		System.out.println("짬뽕");
	}

	@Override
	public void makeSalad() {
		System.out.println("중식 샐러드");
	}

	@Override
	public void makeSource() {
		System.out.println("탕수육");
	}

}
