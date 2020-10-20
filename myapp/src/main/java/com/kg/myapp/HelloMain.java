package com.kg.myapp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class HelloMain {
	
	public static void main(String[] args) {
		
//		HelloController controller= new HelloController();
//		controller.sayHello("하하");
		
		AbstractApplicationContext con =
				new GenericXmlApplicationContext("app-config.xml");
		//xml 을 토대로 만든 객체를 찾아온다.
		
		HelloService service = con.getBean(HelloService.class);
		System.out.println(service.sayHello("하하 + Service"));

		HelloController controller = con.getBean(HelloController.class);
		controller.sayHello("하하 + controller");
		con.close();
		
	}

}
 