package com.spirng.mvc.board.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {

	private Integer boardNo;
	private String title;
	private String content;
	private String writer;
	private String reg_date;
	private String view;
	private Integer viewCnt;
	
	
}
