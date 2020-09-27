package com.flowerPot.semiadmin.repository;

import java.util.List;

import com.flowerPot.semiadmin.model.SemiInventoryVO;
import com.flowerPot.semiadmin.model.SemiNoticeVO;
import com.flowerPot.semiadmin.model.SemiReviewVO;

public interface ISemiNoticeDAO {
	
    // { 공지사항 게시글 목록 가져오기
	List<SemiNoticeVO> getArticles();

	//  공지사항 게시글 번호로 지우기  } 
	void delete(Integer sBno);
	
	//{ Review 후기  } 
	List <SemiReviewVO> getReviewArticles();

	// { Inventory 목록 가져오기  }
	List<SemiInventoryVO> getInvenArticles();
	
	// Inventory 화장품 번호로  수량 submit 하기}
	void submitInven(SemiInventoryVO semi);
	


}
