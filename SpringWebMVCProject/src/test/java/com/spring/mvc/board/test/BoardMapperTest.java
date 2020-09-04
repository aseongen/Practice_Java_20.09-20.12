package com.spring.mvc.board.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spirng.mvc.board.model.BoardVO;
import com.spring.mvc.board.repository.IBoardMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/mvc-config.xml"})
//SpringJUnit4Class 경로를 입력해주어야한다.
public class BoardMapperTest {

	@Autowired
	private IBoardMapper mapper;
	
	//게시글 등록 단위 테스트
	@Test
	public void insertTest() {
		BoardVO article = new BoardVO();
		article.setTitle("테스트 제목입니다");
		article.setWriter("테스트");
		article.setContent("테스트 중우우웅");
		mapper.insert(article);
		System.out.println("게시물 등록 성공!");
	}
	
	
}




