package com.flowerPot.semiadmin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.semiadmin.model.SemiInventoryVO;
import com.flowerPot.semiadmin.model.SemiNoticeVO;
import com.flowerPot.semiadmin.model.SemiReviewVO;
import com.flowerPot.semiadmin.service.ISemiNoticeService;

@Controller
@RequestMapping("/semiadmin")
public class SemiAdminController {

	@Autowired
	private ISemiNoticeService service;

// modal 기능 
	@RequestMapping("/dashboard")
	public void dashboard() {
		System.out.println("dashboard 실행중..");
		
		
	}
	
// { 공지사항 게시글 목록 가져오기
	@RequestMapping("/semi_notice")
	public void table_datatable(Model model) {
		System.out.println("semi_notice 실행 !! ");

		List<SemiNoticeVO> blist = service.getArticles();
		model.addAttribute("blist",blist);

	}
	
//  공지사항 게시글 번호로 지우기  } 
	@RequestMapping("/semi_notice_del_ok")
	public String table_datatable_ok(Model model, Integer sBno ) {
		System.out.println("semi_notice_del_ok : " + sBno);
		service.delTable(sBno);
		
		return "redirect:/semiadmin/semi_notice" ; 
	}
	
//{ Review 후기  } 
	@RequestMapping("/review")
	public void review(Model model) {
		System.out.println("review 후기 페이지 실행");
		
        List<SemiReviewVO> relist = service.getReviewArticles();
        model.addAttribute("relist",relist);

	}
	
//{ inventory 재고 목록 
	@GetMapping("/inventory")
	public void inventory(Model model) {
		System.out.println("inventory 후기 페이지 실행 ");
		
		List<SemiInventoryVO> ilist = service.getInvenArticles();
		model.addAttribute("ilist",ilist);
		
	}
//   inventory  재고 목록  추가 
	@PostMapping("/inventory")
	public String inventory(Model model,SemiInventoryVO semi) {
		
		System.out.println(semi);
		service.submitInven(semi);
		
		return "redirect:/semiadmin/inventory";
	}

// calendar 기능 
	@RequestMapping("/calendar")
	public void calendar() {
		System.out.println("Calendar 실행중..");
		
		
	}
// modal 기능 
	@RequestMapping("/modal")
	public void modal() {
		System.out.println("modal실행중..");
		
		
	}
// modal 기능  - > todoList
	@RequestMapping("/todolist")
	public void todolist() {
		System.out.println("todolist 실행중..");
		
		
	}
	
//form_editor 기능
		@RequestMapping("/form_editor")
		public void form_editor() {
			System.out.println("todolist 실행중..");
			
			
		}

}
