package com.flowerPot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.service.MemberSerivce;
import com.flowerPot.vo.MemberVo;

@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberSerivce memberService;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/login")
	public void login() {
		
	}
	
	// 회원가입 페이지로 이동
	@RequestMapping("/signUp")
	public void signUp() {
		
	}
	
	// 회원가입 처리
	@RequestMapping("/signUp_ok")
	public void signUp_ok(MemberVo member) {
		// 비밀번호 인코딩
		member.setPassword(passwordEncoder.encode(member.getPassword()));
		memberService.insertMember(member);
	}
}
