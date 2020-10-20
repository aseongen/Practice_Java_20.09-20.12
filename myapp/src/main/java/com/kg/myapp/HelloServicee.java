package com.kg.myapp;

import org.springframework.stereotype.Service;

@Service
public class HelloServicee {
	
	public String sayHello(String message) {
		
		return "Helloo Servicee" + message;
	}

}
