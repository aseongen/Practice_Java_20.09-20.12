package com.spring.mvc.board.repository;

import java.util.List;

import com.spring.mvc.board.model.BoardVO;

//게시판 관련 CRUD 추상메서드 선언 
public interface IBoardMapper {
	
	//게시글 등록 기능
	void insert(BoardVO article);
	
	//게시글 목록 조회기능
	List<BoardVO> getArticleList();
	
	//게시글 상세 조회기능
	BoardVO getArticle(Integer boardNo);
	
	//게시글 수정 기능
	void update(BoardVO article);
	
	//게시글 삭제 기능
	void delete(Integer boardNo);
	
}
