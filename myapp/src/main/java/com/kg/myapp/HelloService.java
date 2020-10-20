package com.kg.myapp;

import org.springframework.stereotype.Service;

@Service
//service 어노테이션 한번으로 app-config.xml 을 통해 svc 객체가 생성된다.
public class HelloService implements IHelloService {

	@Override
	public String sayHello(String message) {
		
		return "Hello! " + message;
		
	}

}
