package com.flowerPot.dao;

import static org.junit.Assert.assertEquals;

import java.time.LocalDateTime;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.flowerPot.orderProduct.repository.OrderProductDao;
import com.flowerPot.vo.OrderProductVo;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/test-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml","file:src/main/webapp/WEB-INF/spring/test-case.xml"})
@Slf4j
public class OrderProductDaoTest {

	@Autowired 
	private OrderProductDao orderProductDao;
	
	@Test
	public void insertOrderProduct() {
		
		OrderProductVo orderProduct = new OrderProductVo(0, 0, 0, 0, "order_num", 0, "state", 
				"deliver_state", "member_rank", 0," coupon_name", LocalDateTime.now(), "tel", "email", 100, 100);
		OrderProductVo orderProduct2 = new OrderProductVo(0,0, 0, "order_num", 0, "state", 
				"deliver_state", "member_rank", 0," coupon_name", LocalDateTime.now(), "tel", "email", 100, 100);		
		
		orderProductDao.deleteAll();
		int before = orderProductDao.selectCount();
		orderProductDao.insertOrderProduct(orderProduct);
		orderProductDao.insertOrderProductNoMember(orderProduct2);
		int after = orderProductDao.selectCount();
		assertEquals(before, after-2);
	}
}
