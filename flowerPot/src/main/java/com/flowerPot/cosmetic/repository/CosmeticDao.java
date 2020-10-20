package com.flowerPot.cosmetic.repository;

import java.util.List;

import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.CosmeticVo;

public interface CosmeticDao {

	void insertCosmetic(CosmeticVo c);

	void deleteAll();

	int selectCount();

	void deleteByName(String name);

	List<CosmeticVo> selectListCosmeticByCategory(Criteria c);

	CosmeticVo selectOneCosmeticByCno(Integer cno);

	void updateCosmeticHitsByCno(Integer cno);

	List<CosmeticVo> getProductlist();

}
