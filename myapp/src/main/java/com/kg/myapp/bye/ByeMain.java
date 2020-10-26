package com.kg.myapp.bye;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class ByeMain {

	public static void main(String[] args) {

		AbstractApplicationContext con =
				new GenericXmlApplicationContext("app-config.xml");
		
		ByeController controller = con.getBean(ByeController.class);
		controller.byeHello("굿바이 + Controller");
		con.close();
		
	}

}
