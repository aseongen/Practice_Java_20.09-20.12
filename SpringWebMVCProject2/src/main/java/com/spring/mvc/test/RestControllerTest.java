package com.spring.mvc.test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@RestController //스프링 4이상 부터 사용가능 
//Controller + ResponseBody
@RequestMapping("/rest")
public class RestControllerTest {

	/*
	 *  @ResponseBody:
	 *   리턴 데이터를 ViewResolver 에게 전달하지 않고 
	 *   클라이언트에게 해당 데이터를 바로 응답하게 한다. 
	 */
	
	@GetMapping("/hello")
//	@ResponseBody
	public String hello() {
		return "Hello World";
	}
	
	@GetMapping("/hobbys")
//	@ResponseBody
	public List<String> hobbys(){
		List<String>hobbys = Arrays.asList("축구","수영","음악");
		return hobbys;
	}
	
	@GetMapping("/study")
//	@ResponseBody
	public Map<String, Object> study(){
		Map<String, Object> subject = new HashMap<>();
		subject.put("자바", "JAVA");
		subject.put("JSP", "JAVA Server Pages");
		return subject;
	}
	
	@GetMapping("/person")
//	@ResponseBody
	public Person person() {
		Person p = new Person();
		p.setName("보라돌이");
		p.setAge(20);
		p.setHobbys(Arrays.asList("놀기","놀기","놀기"));

		return p;
	}
	
	
	
	
	
	
	
	
}
