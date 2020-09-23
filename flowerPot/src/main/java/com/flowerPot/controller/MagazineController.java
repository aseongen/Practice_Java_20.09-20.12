package com.flowerPot.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.flowerPot.domain.Criteria;
import com.flowerPot.domain.PageDTO;
import com.flowerPot.service.MagazineService;
import com.flowerPot.vo.MagazineVo;

@Controller
@RequestMapping("magazine")
public class MagazineController {
	private static final Log LOG = LogFactory.getLog( MagazineController.class );
	
	@Autowired
	private MagazineService magazineService;
	
	// 매거진 메인페이지
	@RequestMapping("magazine")
	public void magazine(String category,Model m) {
		m.addAttribute("category", category);
	}
	
	// 매거진 목록 보여주는 함수
	@RequestMapping("magazineAjax")
	@ResponseBody
	public ResponseEntity<List<MagazineVo>> magazineAjax(Criteria c) {
		System.out.println(c.getCategory());
		
		Map<String, Object> map = new HashMap<String, Object>();
		ResponseEntity<List<MagazineVo>> re;
		try {
			List<MagazineVo> mgList =  magazineService.selectMagazineList(c);
			map.put("mgList", mgList);
			int total = magazineService.getTotalCount(c);
			PageDTO page = new PageDTO(c, total);
			map.put("Page", page);
			for(MagazineVo m : mgList) {
				m.setRootfolder(m.getRootfolder().substring(m.getRootfolder().indexOf('\\')).replace('\\', '/'));
				
			}
			re = new  ResponseEntity<List<MagazineVo>>(mgList, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			re = new  ResponseEntity<List<MagazineVo>>(HttpStatus.BAD_REQUEST);
		}
		
		return re;
	}
	
	// 윤신영- 매거진 등록 페이지로 이동
	@RequestMapping("magazine_write")
	public void magazine_write() {
		
	}
	
	
	// 윤신영 - 매거진 등록 처리
	@PostMapping("magazine_write_ok")
	public String magazine_writer_ok(HttpServletRequest request, MultipartHttpServletRequest mrequset) {
		/*
		 * System.out.println(magazine.getTitle());
		 * System.out.println(magazine.getContent());
		 * System.out.println(magazine.getCategory());
		 */
		MagazineVo magazine =  new MagazineVo();
		magazine.setTitle(request.getParameter("title"));
		magazine.setContent(request.getParameter("content"));
		magazine.setCategory(request.getParameter("category"));
	
		magazine = magazineService.insertMagazine(magazine,mrequset);
		
		return "redirect:/magazine/magazine?category=Tip";   // +request.getContextPath();
	}

	// 매거진 내용 페이지
	@RequestMapping("magazine_cont")
	public void magazine_cont(MagazineVo mg,Model m) {
		MagazineVo magazineVo =  magazineService.selectMagzineCont(mg);
		
		// 윤신영 - upload 이하의 주소만 넘김
		magazineVo.setRootfolder(magazineVo.getRootfolder().substring(magazineVo.getRootfolder().indexOf('\\')).replace('\\', '/'));
			
		
		m.addAttribute("magazineVo", magazineVo);
	}
	
	// 매거진 수정 페이지
	@RequestMapping("magazine_update")
	public void magazine_update(MagazineVo magazineVo,Model m) {
		MagazineVo magazine =  magazineService.selectMagzineCont(magazineVo);
		// 윤신영 - upload 이하의 주소만 넘김
		magazine.setRootfolder(magazine.getRootfolder().substring(magazine.getRootfolder().indexOf('\\')).replace('\\', '/'));
		m.addAttribute("magazine", magazine);
	}
	
	// 매거진 수정 처리 페이지
	@RequestMapping("magazine_update_ok")
	public String magazine_update_ok(MagazineVo magazineVo) {
		magazineService.updateMagazine(magazineVo);
		return "redirect:/magazine/magazine?category=Tip";
	}
	
	
	// 매거진 삭제
	@RequestMapping("magazine_delete")
	public void magazine_delete(int mgno ,HttpServletResponse response,HttpServletRequest request) {
		magazineService.deleteMagazine(mgno);
		
		PrintWriter out;
		try {
			out = response.getWriter();
			out.print("<script>");
			out.print("alert('삭제되었습니다');");
			//out.print("location.href='"+ request.getContextPath() +"/magazine/magazine?category=Tip");   // 리다이랙트 되는 부분,, category를 인자값으로 받아서 그쪽매거진 페이지로 가는게 좋은듯
			out.print("location.href='"+ request.getContextPath() +"/magazine/magazine?category=Tip'"); 
			out.print("</script>");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
