package com.flowerPot.semiadmin.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SemiInventoryVO {
	
	private Integer cno; //화장품 번호
	private String name; // 화장품 이름
	private String proOption; //상품 색상, 사이즈
	private Integer stockNumber; //기존 상품 수량
	private Integer plusStock; //수량 추가 
	private String sellWay; //판매방식 
	
	@Override
	public String toString() {
		return "SemiInventoryVO [cno=" + cno + ", name=" + name + ", proOption=" + proOption + ", stockNumber="
				+ stockNumber + ", plusStock=" + plusStock + ", sellWay=" + sellWay + "]";
	}
	


}
