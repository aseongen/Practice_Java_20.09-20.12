package com.kg.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kg.myapp.service.IEmpService;
import com.kg.myapp.vo.EmpDetailVO;

@Controller
public class EmpController {

	@Autowired
	IEmpService empService;

	// controller 어노테이션이 있어야 requestMappig 사용할수 있다 -> 주소에 매핑 시킨다.
	@GetMapping(value = "/emp")
	public String mainPage(Model model) {
		model.addAttribute("message", "Hello!Welcome to Employee");
		return "home";

	}

	// model: 데이터 저장 공간
	@GetMapping(value = "/emp/count")
	public String empCount(@RequestParam(value = "deptId", required = false, defaultValue = "0") int deptId,
			Model model) {
		// RequestParam : 원하는 데이터를 받고 싶을 때 사용하고 value 값을 지정해서 int 에 넣어준다
		// required= false:값이 없어도 된다. default 값은 0으로 지정한다.
		// model 에 데이터를 저장할 거고, 저장할 데이터의 이름은 "count"이고 데이터 저장내용은 서비스의 getEmpCount 이다.
		if (deptId == 0) {
			model.addAttribute("count", empService.getEmpCount());

		} else {
			model.addAttribute("count", empService.getEmpCount(deptId));
		}
		return "emp/countfile";
	}

	@GetMapping(value = "/emp/list")
	public void empList(Model model) {
		// void 시에는 매핑주소와 동일한 경로로 간다.
		model.addAttribute("empList", empService.getEmpList());

	}

	@GetMapping(value = "/emp/{employeeId}")
	public String empView(@PathVariable int employeeId, Model model) {
		model.addAttribute("emp",(EmpDetailVO)empService.getEmpInfo(employeeId));
         //EmpDetailVO 생략 가능
		return "emp/view";
	}

	@GetMapping(value="/emp/countview")
	public void getEmpListt(int deptId, Model model) {
		model.addAttribute("empList",empService.getEmpListt(deptId));
		
	}
	
	@GetMapping(value="/emp/nameList")
	public String getNameList(String keyword, Model model) {
		keyword ="%" + keyword +"%";
		model.addAttribute("nameList",empService.getNameList(keyword));
		return "emp/nameList";
	}
	
	@GetMapping(value="/emp/insert")
	public void empInsert(Model model) {
		
		model.addAttribute("jobList",empService.getAllJobId());
		model.addAttribute("manList",empService.getAllManagerId());
		model.addAttribute("deptList",empService.getAllDeptId());
		model.addAttribute("message","insert");
		
	}
	
	@PostMapping(value="emp/insert")
	public String empInsert(EmpDetailVO emp, Model model) {
		//파라미터의 이름이랑 변수명의 이름과 같아야 한다. 
		empService.insertEmp(emp);
		
		return "redirect:/emp/list";
		
	}
	
	@GetMapping(value="emp/update/{empId}")
	public String empUpdate(@PathVariable int empId, Model model) {
		
		model.addAttribute("emp",empService.getEmpInfo(empId));
		model.addAttribute("jobList",empService.getAllJobId());
		model.addAttribute("manList",empService.getAllManagerId());
		model.addAttribute("deptList",empService.getAllDeptId());
		model.addAttribute("message","update");
		return "emp/update";
	}
	
	
	

}
