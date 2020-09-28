package com.net.yjh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.net.yjh.Model.yjhVO;
import com.net.yjh.service.IYjhService;

@Controller
@RequestMapping("/test")
public class yjhController {

	@Autowired
	private IYjhService service;
	
	@RequestMapping("/list")
	public void List() {
		System.out.println("전체 목록 가져오기");
		
		List<yjhVO> ylist = service.getArticles();
		
		
	}
}
