package com.spring.mvc.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spirng.mvc.board.model.BoardVO;
import com.spring.mvc.board.service.IBoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	private IBoardService service;
	
	@GetMapping("/list")
	public String list(Model model) {
		List<BoardVO> list = service.getArticleList();
		System.out.println("URL:/board/list GET->result: " + list.size());
		
//		list.forEach(article-> System.out.println(article));
        model.addAttribute("articles", list);
		return "board/list";
		
	}
	
	//게시글 작성페이지 요청
	@GetMapping("/write")
	public void write() {
		System.out.println("URL:/board/write => GET");
	}

	//게시글 DB 등록 요청
	@PostMapping("/write")
    public String write(BoardVO article, RedirectAttributes ra) {
		
		System.out.println("URL:/board/write =>post");
		System.out.println("Controller parameter: " + article);
		service.insert(article);
		//addFlashAttribute 있는 값을 return 에 보내준다.
		ra.addFlashAttribute("msg", "regSuccess");
		return "redirect:/board/list";
	}

	//게시물 상세 조회 요청
	@GetMapping("/content")
	public String content (Integer boardNo, Model model) {
		System.out.println("URL:/board/content =>GET");
		BoardVO vo = service.getArticle(boardNo);
		System.out.println("Result Data: " + vo);
		model.addAttribute("article",vo);
		return "board/content";
	}
	
	
	
	
	
	
	
	
	
	
	
}














