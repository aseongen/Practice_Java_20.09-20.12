package com.kg.myapp.bye;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ByeController {
	
	@Autowired
	IByeService byeService;
	
	public void byeHello(String memo) {
		System.out.println(byeService.sayBye(memo));
	}

}
