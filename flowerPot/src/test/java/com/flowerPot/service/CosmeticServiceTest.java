package com.flowerPot.service;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.flowerPot.cosmetic.service.CosmeticService;
import com.flowerPot.dao.AttachFileDaoTest;
import com.flowerPot.domain.Criteria;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/test-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Slf4j
public class CosmeticServiceTest {

	@Autowired
	private CosmeticService cosmeticService;
	
	private Criteria c;
	
	@Before
	public void testCase() {
		
	}
	
	
	@Test
	public void selectListCosmeticByCategory() {
		
	}
}
