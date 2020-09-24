package com.flowerPot.vo;

import java.time.LocalDateTime;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CosmeticVo {
	private Integer cno;
	private String name;
	private String code;
	private String type;
	private String brand;
	private String content;
	private String skinType;
	private Integer price;
	private String tag;
	private Integer discountPersent;  // 할인률
	private Integer stockNumber;  // 재고수
	private Integer hits;
	private Integer likey;
	private Boolean enable;
	private LocalDateTime regdate;
	
	private Integer rating;
	private Double Drating;
	private Integer numProduct;  // 장바구니 갈때 숫자
	private String mappingURL;   // 하나의 매핑주소
	private List<String> mappingList;  // 여러개의 매핑주소
	
	private List<CosmeticVo> list;
	
	/*
alter table f_cosmetic add (likey number(30));
alter table f_cosmetic add (code varchar2(150));
alter table f_cosmetic add (enable char(1));
    */
	
	
	public CosmeticVo(int cno, String type, String brand, String skinType, int price, int discountPersent,
			int stockNumber) {
		super();
		this.cno = cno;
		this.type = type;
		this.brand = brand;
		this.skinType = skinType;
		this.price = price;
		this.discountPersent = discountPersent;
		this.stockNumber = stockNumber;
	}

	public CosmeticVo(int cno, String name, String type, String brand, String skinType, int price, int discountPersent,
			int stockNumber) {
		super();
		this.cno = cno;
		this.name = name;
		this.type = type;
		this.brand = brand;
		this.skinType = skinType;
		this.price = price;
		this.discountPersent = discountPersent;
		this.stockNumber = stockNumber;
	}

	public CosmeticVo(int cno, String name, String type, String brand, String skinType, int price, int discountPersent,
			int stockNumber, LocalDateTime regdate) {
		super();
		this.cno = cno;
		this.name = name;
		this.type = type;
		this.brand = brand;
		this.skinType = skinType;
		this.price = price;
		this.discountPersent = discountPersent;
		this.stockNumber = stockNumber;
		this.regdate = regdate;
	}

}


/*
 create table f_cosmetic(
		cno number(30),   --화장품 번호
		type varchar2(50),   --화장품 번호
		brand varchar2(50),   --브랜드
		price number(30),    --화장품 번호
		tag varchar2(50),
		discountPersent number(30),
		stockNumber number(30),
		primary key(cno)
	);
		*/