package com.flowerPot.cosmeticReview.repository;

import java.util.List;

import com.flowerPot.vo.CosmeticReviewVo;

public interface CosmeticReviewDao {

	void insertcosmeticReview(CosmeticReviewVo cosmeticReview);

	List<CosmeticReviewVo> selectListCosmeticReviewListByCno(Integer cno);

	List<CosmeticReviewVo> selectListCosmeticReviewListByCnoRating(Integer cno);

}
