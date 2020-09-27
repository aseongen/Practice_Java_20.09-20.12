package com.flowerPot.admin.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.dao.EmpMapper;
import com.flowerPot.admin.dao.MemMapper;
import com.flowerPot.admin.vo.EmpVo;
import com.flowerPot.admin.vo.UserTVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserControllerTest {
	
	@Autowired
	private MemMapper mapper;
	
	@Autowired
	private EmpMapper eMapper;
	
	@Test
	public void test() {
		System.out.println(eMapper.toString());
		System.out.println(eMapper);
		EmpVo a = new EmpVo();
		eMapper.insertEmpOne(a);
	}
	
	@Test
	public void userInsertTest() {
		for(int i=1; i<=367; i++) {
			UserTVO userT = new UserTVO();
			userT.setMno(i);
			userT.setId("id"+i);
			userT.setName("이름"+i);
			mapper.insertUserT(userT);
			System.out.println("게시물 등록 성공!");
		}
	}
	@Test
	public void EmpInsertTest() {
		for(int i=1; i<=367; i++) {
			EmpVo eT = new EmpVo();
			eT.setEmpId(""+i);
			eT.setEmpName("이름"+i);
			eT.setDeptNo(10);
			eT.setPoNo(3);
			System.out.println(eT.toString());
			eMapper.insertEmpOne(eT);
			System.out.println("게시물 등록 성공!");
		}
	}
	@Test
	public void EmpSelectTest() {
		for(int i=1; i<=367; i++) {
			SearchVO search = new SearchVO();
			System.out.println(eMapper.countArticles(search));
		}
	}
	
	@Test
	public void userSelectTest() {
		mapper.selectUserT().forEach(userT -> System.out.println("회원 목록 : "+userT));
	}
	@Test
	public void memSelectTest() {
		mapper.selectUserT().forEach(userT -> System.out.println("회원 목록 : "+userT));
	}
	
	
}