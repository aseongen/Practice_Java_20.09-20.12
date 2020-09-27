package com.flowerPot.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.IEmpService;
import com.flowerPot.admin.vo.EmpVo;

@Controller
@RequestMapping("/admin")
public class AdminEmployeeController {
	
	@Autowired
	private IEmpService service;
	
	//직원 관리(목록) 
	@RequestMapping("/employee")
	public void employee(Model model, SearchVO search) {
		PageCreator pc = new PageCreator();
		pc.setPaging(search);		
		List<EmpVo>	eList = service.selectEmpList(search);
		pc.setArticleTotalCount(service.countArticles(search));
		model.addAttribute("eList",eList);
		model.addAttribute("pc",pc);
	}
	
	//직원 추가
	@RequestMapping("/empAdd")
	public String empAdd(EmpVo emp) {
		service.insertEmpOne(emp);
		return "redirect:/admin/employee";
	}
	
	//직원 삭제
	@RequestMapping("/empDel")
	public String empDel(EmpVo emp) {
		service.deleteEmpOne(emp);
		return "redirect:/admin/employee";
	}

}
