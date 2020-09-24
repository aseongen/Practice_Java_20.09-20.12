package com.flowerPot.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.flowerPot.admin.commons.PageCreator;
import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.dao.CNoticeMapper;
import com.flowerPot.admin.vo.CustomerVo;

@Controller
@RequestMapping("/admin/customer")
public class AdminNoticeController {
	
	@Autowired
	private CNoticeMapper service;
	
	//공지사항 목록 페이지
	@RequestMapping("/notice")
	public String notice(CustomerVo notice,SearchVO search, Model model) {
		PageCreator pc = new PageCreator();
		pc.setPaging(search);
		List<CustomerVo> nList = service.selectNoticeList(search);
		model.addAttribute("nList",nList);
		return "/admin/notice";
	}

	//공지사항 등록 페이지
	@RequestMapping("/notice_write")
	public String notice_write(CustomerVo notice) {
		System.out.println(notice);
		return "/admin/notice_write";
		
	}
	//공지사항 등록 설정
	@RequestMapping("/notice_write_ok")
	public String notice_write_ok(CustomerVo notice, RedirectAttributes ra) {
		
		System.out.println(notice);
		service.insertNotice(notice);
		ra.addFlashAttribute("msg","writeSuccess");
		return "redirect:/admin/customer/notice";

	}
	//공지사항 내용보기
	@RequestMapping("/notice_content/{ccno}")
	public String notice_content(@PathVariable Integer ccno,Model model) {
		CustomerVo notice = service.getNoticeCont(ccno);
		model.addAttribute("notice",notice);
		return "/admin/notice_content";
	}
	
	//공지사항 수정 페이지
	@RequestMapping("/notice_modify/{ccno}")
	public String notice_modify(@PathVariable Integer ccno,Model model) {
		CustomerVo notice = service.getNoticeCont(ccno);
		model.addAttribute("notice",notice);
		return "/admin/notice_modify";
	}
	
	@RequestMapping("/notice_modify_ok")
	public String notice_modify_ok(CustomerVo notice, RedirectAttributes ra) {
		System.out.println(notice);
		service.modifyNotice(notice);
		ra.addFlashAttribute("msg","modSuccess");
		return "redirect:/admin/customer/notice";
	}
	@RequestMapping("/notice_del/{ccno}")
	public String notice_del(@PathVariable Integer ccno, RedirectAttributes ra) {
		service.delNotice(ccno);
		ra.addFlashAttribute("msg","delSuccess");
		return "redirect:/admin/customer/notice";
	}
}
