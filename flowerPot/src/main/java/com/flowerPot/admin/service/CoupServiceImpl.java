package com.flowerPot.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.dao.CoupMapper;
import com.flowerPot.admin.vo.CoupVo;

@Service
public class CoupServiceImpl implements ICoupService {
	
	@Autowired
	private CoupMapper mapper;
	
	@Override
	public void couponRegist(CoupVo coupon) {
		mapper.couponRegist(coupon);
	}
	@Override
	public List<CoupVo> selectCoupList(SearchVO search) {
		return mapper.selectCoupList(search);
	}
	
}
