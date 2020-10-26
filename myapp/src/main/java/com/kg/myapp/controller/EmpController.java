package com.kg.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmpController {

	//controller 어노테이션이 있어야 requestMappig 사용할수 있다 -> 주소에 매핑 시킨다.
	@GetMapping(value="/emp")
	public String mainPage(Model model) {
		model.addAttribute("message","Hello!Welcome to Employee");
		return "home";
		
	}
	
	
	
	
	
}
