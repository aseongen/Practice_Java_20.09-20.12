package com.spring.mvc.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mvc.board.model.BoardVO;
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
	@GetMapping("/content/{boardNo}")
	//getMapping {boardNo} -> 경로에서 PathVariable 어노테이션을 활용해 읽어들이겠다.
	//getMapping의 boardNo를 PathVariable의 boardNo에 넣어두겠다.
	public String content (@PathVariable Integer boardNo, Model model) {
		System.out.println("URL:/board/content =>GET");
		System.out.println("parameter(글 번호): " + boardNo);
		BoardVO vo = service.getArticle(boardNo);
		System.out.println("Result Data: " + vo);
		model.addAttribute("article",vo);
		return "board/content";
	}
	
	//게시물 삭제 처리 요청
	@PostMapping("/delete")
	public String remove(Integer boardNo, RedirectAttributes ra) {
		System.out.println("URL:/board/delete => POST");
		System.out.println("parameter(글번호): " + boardNo);
		service.delete(boardNo);
		ra.addFlashAttribute("msg","delSuccess");
		
		return "redirect:/board/list";
		
	}
	
	//게시물 수정 페이지 요청
	@GetMapping("/modify")
	public String modify (Integer boardNo, Model model) {
		System.out.println("URL:/board/modify =>GET" );
		System.out.println("parameter(글번호): " + boardNo);
		
		BoardVO vo= service.getArticle(boardNo);
		System.out.println("Result Data: " + vo);
		model.addAttribute("article", vo);
		
		return "board/modify" ;
	}
	
	//게시판 수정 요청
	@PostMapping("/modify")
	public String modify(BoardVO article, RedirectAttributes ra) {
		System.out.println("URL:/board/modify => POST");
		System.out.println("parameter(게시글): " + article); //글번호 들어가는게 눈에 보이면
		//service 호출해서 업데이트 진행
		service.update(article);
		//수정 성공 알림창 띄우기 -> redirect 추가하기
		ra.addFlashAttribute("msg","modSuccess");
		//수정 성공후 content 페이지로 안내 ->redirect -> 해당 글 번호로 안내
		return "redirect:/board/content/" + article.getBoardNo();
	}
	
	
}

