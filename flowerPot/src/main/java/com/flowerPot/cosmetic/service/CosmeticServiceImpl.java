package com.flowerPot.cosmetic.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.flowerPot.attachFile.repository.AttachFileDao;
import com.flowerPot.cosmetic.repository.CosmeticDao;
import com.flowerPot.description.repository.DescriptionDao;
import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.AttachFileVo;
import com.flowerPot.vo.CosmeticVo;
import com.flowerPot.vo.DescriptionVo;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CosmeticServiceImpl implements CosmeticService {
	
	@Autowired
	private CosmeticDao cosmeticDao;
	@Autowired
	private DescriptionDao descriptionDao;
	@Autowired
	private AttachFileDao attachFileDao;

	// 상품등록
	@Transactional
	@Override
	public void insertCosmeticAndDescription(CosmeticVo cosmetic, DescriptionVo description) {
		String code = cosmetic.getBrand()+"_"+UUID.randomUUID().toString(); // 상품코드 생성
		cosmetic.setCode(code);
		cosmeticDao.insertCosmetic(cosmetic);
		description.setCno(cosmetic.getCno());
		descriptionDao.insertDescription(description);
	}

	@Override
	public List<CosmeticVo> selectListCosmeticByCategory(Criteria c) {
		 List<CosmeticVo> cList = cosmeticDao.selectListCosmeticByCategory(c);
		 // 화장품에 섬네일 이미지 하나를 가져오는 작업, 없다면 가져오지 않음
		 for(CosmeticVo cosmetic : cList) {
			 List<AttachFileVo> mappingURLList = attachFileDao.selectMappingURLByCno(cosmetic.getCno());
			 if(mappingURLList.size()!=0) {
				 cosmetic.setMappingURL(mappingURLList.get(0).getMappingURL());
				 log.info("cosmetic : "+cosmetic.toString());
			 }
		 }
		 return cList;
	}

	// cno로 화장품 정보 가져오기
	@Override
	public CosmeticVo selectOneCosmeticByCno(Integer cno) {
		return cosmeticDao.selectOneCosmeticByCno(cno);
	}

	// 세션에 화장품 리스트 넣기
	@Override
	public void shoppingCart_register(Integer cno, Integer isNextpage, Integer numProduct, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		CosmeticVo cosmetic = cosmeticDao.selectOneCosmeticByCno(cno);
		cosmetic.setNumProduct(numProduct);
		if(session.getAttribute("shoppingCartList")==null) {
			List<CosmeticVo> shoppingCartList = new ArrayList<CosmeticVo>();
			shoppingCartList.add(cosmetic);
			session.setAttribute("shoppingCartList", shoppingCartList);
		}else {
			List<CosmeticVo> shoppingCartList = (List<CosmeticVo>) session.getAttribute("shoppingCartList");
			shoppingCartList.add(cosmetic);
			session.setAttribute("shoppingCartList", shoppingCartList);
		}
	}
}
