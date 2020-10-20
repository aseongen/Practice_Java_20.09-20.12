package com.flowerPot.controller;

import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.flowerPot.service.KakaoPay;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	
	private static final Log LOG = LogFactory.getLog( HomeController.class );
	
	@RequestMapping(value = "/shoppingList/shoppingList", method = RequestMethod.GET)
	public void shoppingList() {
		
	}
	
	@RequestMapping(value = "/shoppingList/wishlist", method = RequestMethod.GET)
	public void wishlist() {
		
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] c= request.getCookies();
		log.info("쿠키:"+c);
		for(Cookie c1 : c) {
			log.info("쿠키:"+c1.getName());
			log.info("쿠키:"+c1.getValue());
		}
		return "test";
	}
	
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public String index2(Locale locale, Model model) {
		return "index2";
	}
	
	@RequestMapping("/ourCompany/Company_main")
	public void ourcompany() {
		System.out.println("우리회사 홈페이지 ");
	}

}
