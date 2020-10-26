package com.kg.myapp;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME) //실행범위
@Target(FIELD)
public @interface MyAnnotation {

//	String name() default "기본값입니다.";
	
}
