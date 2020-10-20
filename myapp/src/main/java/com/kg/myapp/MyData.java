package com.kg.myapp;

public class MyData {

	@MyAnnotation
	String name;
	
	@MyAnnotation(name="어노테이션의 값")
	String toSay;
	
}
