package com.flowerPot.admin.dao;

import java.util.List;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.vo.CoupVo;

public interface CoupMapper {

	void couponRegist(CoupVo coupon);
	List<CoupVo> selectCoupList(SearchVO search);
}
