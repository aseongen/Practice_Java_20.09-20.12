package com.flowerPot.orderProduct.repository;

import com.flowerPot.vo.OrderProductVo;

public interface OrderProductDao {

	void insertOrderProduct(OrderProductVo orderProduct);

	void insertOrderProductNoMember(OrderProductVo orderProduct);

	void deleteAll();
	
	int selectCount();
}
