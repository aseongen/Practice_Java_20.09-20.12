package com.flowerPot.admin.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.service.ICoupService;
import com.flowerPot.admin.vo.CoupVo;

@Controller
@RequestMapping("/admin")
public class AdminCouponController {
	
	@Autowired
	private ICoupService service;
	
	@RequestMapping("/coupon")
	public void coupon(Model model,SearchVO search) {
		List<CoupVo> cList = service.selectCoupList(search);
		model.addAttribute("cList",cList);
	}
	
	@RequestMapping("/couponRegist")
	public String couponRegist( CoupVo coupon, 
								@RequestParam("startPDate") String startPDate, 
								@RequestParam("endPDate") String endPDate) {

		//String 날짜데이터 형태를 "yyyy-MM-dd"로 포맷하기위해 지정
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		
		//String StartPDate의 날짜를 formatter객체인 yyyy-MM-dd 형태로포맷 후 시 분 초 인스턴스를 생성 
		coupon.setStartDate(LocalDate.parse(startPDate, formatter).atTime(0, 0, 0));
		coupon.setEndDate(LocalDate.parse(endPDate, formatter).atTime(0, 0, 0)); //.atTime() : localDateTime 시 분 초 인스턴스 생성

			service.couponRegist(coupon);
			
		return "redirect:/admin/coupon";
	}
}
