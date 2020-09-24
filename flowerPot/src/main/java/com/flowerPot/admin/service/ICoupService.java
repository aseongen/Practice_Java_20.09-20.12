package com.flowerPot.admin.service;

import java.util.List;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.vo.CoupVo;

public interface ICoupService {

	void couponRegist(CoupVo coupon);

	List<CoupVo> selectCoupList(SearchVO search);

}
