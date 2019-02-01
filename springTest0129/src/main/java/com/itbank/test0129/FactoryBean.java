package com.itbank.test0129;

public class FactoryBean {
	public Object getBean(String name){
		Object o = null;
		if(name.equals("red")){
			o = new RedCar();
		}else if(name.equals("blue")){
			o = new BlueCar();
		}
			
		return o;
	}
}
