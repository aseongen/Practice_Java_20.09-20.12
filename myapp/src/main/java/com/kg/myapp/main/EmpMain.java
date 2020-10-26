package com.kg.myapp.main;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.kg.myapp.service.EmpService;
import com.kg.myapp.service.IEmpService;
import com.kg.myapp.vo.EmpVO;

public class EmpMain {

	public static void main(String[] args) {

     AbstractApplicationContext con = new GenericXmlApplicationContext("app-config.xml");
     
//     System.out.println(empService.selectEmployee(100));
	
     
  /*   for(EmpVO emp : empList) {
    	 System.out.println(emp);
     }
    */ 
     
     IEmpService empService = con.getBean("empService",IEmpService.class);
		/*
		 * System.out.println(empService.getEmpCount());
		 * System.out.println(empService.getEmpCount(30));
		 * System.out.println(empService.getEmpList());
		 * System.out.println(empService.getAllManagerId());
		 */
  //   empService.deleteEmp(100);
     con.close();
	}

}
