package com.flowerPot.cosmetic.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Member;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.flowerPot.attachFile.service.AttachFileService;
import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.cosmeticReview.service.CosmeticReviewService;
import com.flowerPot.description.service.DescriptionService;
import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.AttachFileVo;
import com.flowerPot.vo.CosmeticReviewVo;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;
import com.flowerPot.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("cosmetic")
@Slf4j
public class CosmeticController {

	@Autowired
	private CosmeticService cosmeticService;
	@Autowired
	private AttachFileService attachFileService;
	@Autowired
	private DescriptionService descriptionService;
	@Autowired 
	CosmeticReviewService cosmeticReviewService;
	
	@RequestMapping("payment")
	public void payment(Model model) {
		MemberVo memberVo = new MemberVo();
		model.addAttribute("member", memberVo);
		
	}
	
	// ajax, 장바구니에 담긴 화장품 삭제
	@RequestMapping("shopping_list_del")
	@ResponseBody
	public ResponseEntity<String> shopping_list_del(Integer cno,HttpSession session) {
		log.info("cno:"+cno);
		List<CosmeticVo> cList = (List<CosmeticVo>) session.getAttribute("shoppingCartList");
		
		for(int i=0; i<cList.size(); i++) {
			if(cList.get(i).getCno()==cno) {
				cList.remove(i);
				break;
			}
		}
		return new ResponseEntity<String>("success",HttpStatus.OK);
	}
	
	// 장바구니 담기
	@RequestMapping("shoppingCart_register")
	public String shoppingCart_register(Integer cno,Integer isNextpage,Integer numProduct,HttpServletRequest request, HttpServletResponse response , HttpSession session) {
		log.info("cno:"+cno+" isNextpage:"+isNextpage+" numProduct: "+numProduct);
		cosmeticService.shoppingCart_register(cno,isNextpage,numProduct,session,request,response);
		if(isNextpage==1) {
			// 장바구니 리스트로 이동
			return "redirect:/shoppingList/shoppingList";
		}else {
			// 계속 쇼핑하기
			return "redirect:/";
		}
	}
	
	// 윤신영 - 화장품 페이지 이동 브랜치
	@RequestMapping("cosmetic_ok")
	public void cosmetic_ok(Integer cno,HttpServletRequest request,HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		if(cno==null) {
			out.print("<script>");
			out.print("alert('잘못된 접근입니다');");
			out.print("location.href='"+request.getContextPath()+"/cosmetic/cosmetic_list';");
			out.print("</script>");
			out.close();
		}else {
			out.print("<script>");
			out.print("location.href='"+request.getContextPath()+"/cosmetic/cosmetic?cno="+cno+"';");
			out.print("</script>");
			out.close();
		}
	}
	
	// 윤신영 - 화장품 구입 페이지
	@RequestMapping("cosmetic")
	public void cosmetic(Integer cno,Model model) throws IOException {
		CosmeticVo cosmetic = cosmeticService.selectOneCosmeticByCno(cno);
		DescriptionVo description = descriptionService.selectOneDescriptionByCno(cno);
		List<CosmeticReviewVo> crList = cosmeticReviewService.selectListCosmeticReviewListByCno(cno);
		model.addAttribute("cosmetic", cosmetic);
		model.addAttribute("description", description);
		model.addAttribute("crList", crList);
	}
	
	// 화장품 리스트 페이지 이동
	@RequestMapping("cosmetic_list")
	public void cosmetic_list(Model model,Criteria c) {
		List<CosmeticVo> cList = cosmeticService.selectListCosmeticByCategory(c);
		model.addAttribute("cList", cList);
		model.addAttribute("categoryName", c.getCategoryName());
		for(CosmeticVo cosmetic : cList) {
			System.out.println("cList : " + cosmetic.toString());
		}
	}
	
	// 윤신영 - 화장품 등록 페이지 이동
	@RequestMapping("cosmetic_register")
	public void cosmetic_register() {
		
	}
	
	/*
	@RequestMapping(value = "cosmetic_register_ok", method = RequestMethod.POST)
	@ResponseBody
	public String cosmetic_register_ok(CosmeticVo cosmetic,  DescriptionVo description) {
		log.info("cosmetic : " + cosmetic.toString());
		log.info("description : " + description.toString());
		cosmeticService.cosmetic_register_ok(cosmetic,description);
		
		return "cosmetic/cosmetic";
	}
	*/
	
	// 윤신영 - 화장품 등록 (아작스)
	@RequestMapping(value = "cosmeticRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> cosmeticRegister(CosmeticVo cosmetic,  DescriptionVo description){
		ResponseEntity<String> r = null;
		
		log.info("cosmetic : "+cosmetic.toString());
		log.info("description : "+description.toString());
		
		try {
			cosmeticService.insertCosmeticAndDescription(cosmetic,description);
			r= new ResponseEntity<String>(Integer.toString(cosmetic.getCno()),HttpStatus.OK);
		} catch (Exception e) {
			r= new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
			e.printStackTrace();
		}
		log.info("cosmetic cno : "+cosmetic.toString());
		return r;
	}
	
	// 윤신영 - 첨부파일사진 등록 (아작스)
	@RequestMapping(value = "AttachRegister", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> AttachRegister(@RequestBody List<AttachFileVo> attachList ){ //Map<String, Object> params
		ResponseEntity<String> r = null;
		log.info("attach : "+attachList.toString());
		try {
			for(AttachFileVo attach : attachList) {
				attachFileService.insertAttachFile(attach);
			}
			r= new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			r= new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return r;
	}
}
