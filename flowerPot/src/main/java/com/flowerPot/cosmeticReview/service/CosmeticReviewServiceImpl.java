package com.flowerPot.cosmeticReview.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.cosmeticReview.repository.CosmeticReviewDao;
import com.flowerPot.vo.CosmeticReviewVo;

@Service
public class CosmeticReviewServiceImpl implements CosmeticReviewService {

	@Autowired
	private CosmeticReviewDao cosmeticReviewDao;
	
	@Override
	public void insertcosmeticReview(CosmeticReviewVo cosmeticReview) {
		cosmeticReviewDao.insertcosmeticReview(cosmeticReview);
	}

	@Override
	public List<CosmeticReviewVo> selectListCosmeticReviewListByCno(Integer cno) {
		return cosmeticReviewDao.selectListCosmeticReviewListByCno(cno);
	}

}
