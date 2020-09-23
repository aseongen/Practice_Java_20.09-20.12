package com.flowerPot.semiadmin.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SemiReviewVO {

	private Integer ono;
	private Integer mno;
	private Integer cno;
	private String orderNum;
	private Integer amount;
	private String state;
	private Date date;
	private String deliverState;
	private String memberRank;
	private String point;
	private String coupon;
	@Override
	public String toString() {
		return "SemiReviewVO [ono=" + ono + ", mno=" + mno + ", cno=" + cno + ", orderNum=" + orderNum + ", amount="
				+ amount + ", state=" + state + ", date=" + date + ", deliverState=" + deliverState + ", memberRank="
				+ memberRank + ", point=" + point + ", coupon=" + coupon + "]";
	}
	

	
}
