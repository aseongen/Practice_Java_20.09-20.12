package com.flowerPot.admin.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.IMemService;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/admin")
public class AdminTestController {
	
	@Autowired
	private IMemService service;
	
	//종합 현황
	@RequestMapping("/dashboard")
	public void dashboard() {
		
	}
	
	
	@RequestMapping("/template")
	public void template() {
		
	}
	
	@RequestMapping("/typography")
	public void typography() {
		
	}
	
	@RequestMapping("/icons")
	public void upgrade() {
		
	}
	
	@RequestMapping("/notifications")
	public void notifications() {
		
	}
	
}
