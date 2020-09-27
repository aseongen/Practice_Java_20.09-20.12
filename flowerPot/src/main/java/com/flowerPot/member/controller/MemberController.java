package com.flowerPot.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flowerPot.member.service.MemberSerivce;
import com.flowerPot.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberSerivce memberService;
	@Autowired
	private PasswordEncoder passwordEncoder;

	
	@RequestMapping("/login") public void login() {
	 
	 }
	 
	 // 회원가입 페이지로 이동
	 
	 @RequestMapping("/signUp") 
	 public void signUp() {
	 
	 }
	 
	// 회원가입 요청 처리
	// Rest-api에서 Insert-> POST
	
	
	// 회원가입 처리
	@RequestMapping("/signUp_ok")
	public String signUp_ok(MemberVo member) {
		// 비밀번호 인코딩
		log.info("회원정보 : "+member.toString());
		member.setPassword(passwordEncoder.encode(member.getPassword()));
		log.info("회원정보 : "+member.toString());
		memberService.insertMember(member);
		return "redirect:/";
		
	/*
	@PostMapping("/")
	public String register(@RequestBody MemberVo member) {
		System.out.println("/user/ POST 요청 발생!");
		System.out.println("param: " + member);

		memberService.register(member);
		return "joinSuccess";
	}

	// 아이디 중보곽인 요청 처리
	@PostMapping("/checkId")
	public String checkId(@RequestBody String member) {
		System.out.println("/mvc/user/checkId: POST요청 발생!");
		System.out.println("parameter:" + member);
		String result = null;
		Integer checkNum = memberService.checkId(member);
		if (checkNum == 1) {
			System.out.println("아이디가 중복됨!");
			result = "NO";

		} else {
			System.out.println("아이디 사용가능!");
			result = "OK";
		}
		return result;
	}
	
	// 로그인 요청 처리
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestBody MemberVo inputData) {
		String result = null;

		
		 // 클라이언트 전송한 id값과 pw값을 가지고 DB에서 회원의 정보를 조회해서 불러온다음 값 비교를 통해 1. 아이디가 없을 경우
		  //클라이언트측으로 문자열 "idFail"전송 2. 비밀번호가 틀렸을 경우 문자열 "pwFail"전송 3. 로그인 성공시 문자열
		 //"loginSuccess" 전송
		 
		System.out.println("/user/loginCheck 요청!:POST");
		System.out.println("Parameter:" + inputData);

		MemberVo dbData = memberService.selectOne(inputData.getId());

		if (dbData != null) {
			if (inputData.getPassword().equals(dbData.getPassword())) {
				result = "loginSuccess";

			} else {
				result = "pwFail";
			}
		} else {
			result = "idFail";
		}
		return result;
	}

	// 회원탈퇴 요청 처리
//	@RequestMapping(value="/", method=RequestMethod.DELETE)
	@DeleteMapping("/{account}")
	public String delete(@PathVariable String account) {
		System.out.println("/user/" + account + ": DELETE 요청 발생!");

		memberService.delete(account);
		return "delSuccess";
	}

	// 회원정보 조회 요청 처리
	@GetMapping("/{account}")
	public MemberVo selectOne(@PathVariable String account) {
		System.out.println("/user/" + account + ": GET 요청 발생!");

		return memberService.selectOne(account);
	}

	// 회원정보 전체조회 요청 처리
	@GetMapping("/")
	public List<MemberVo> selectOne() {
		System.out.println("/user/ : GET 요청 발생!");

		return memberService.selectAll(); 
	 */
	}
}
