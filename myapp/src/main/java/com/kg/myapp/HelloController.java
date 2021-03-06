package com.kg.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller
public class HelloController {

	@Autowired //helloServiceProxy가 실행됨
	IHelloService helloService;

	public void sayHello(String message) {
		System.out.println(helloService.sayHello(message));
		
	}

}
