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
	private Integer dno;
	private String orderNum;
	private Integer amount;
	private String state;
	private String deliverState;
	private String memberRank;
	private String point;
	private String coupon;
	private Date date;
	private String tel;
	private String email;
	private String finalprice;
	
	@Override
	public String toString() {
		return "SemiReviewVO [ono=" + ono + ", mno=" + mno + ", cno=" + cno + ", dno=" + dno + ", orderNum=" + orderNum
				+ ", amount=" + amount + ", state=" + state + ", deliverState=" + deliverState + ", memberRank="
				+ memberRank + ", point=" + point + ", coupon=" + coupon + ", date=" + date + ", tel=" + tel
				+ ", email=" + email + ", finalprice=" + finalprice + "]";
	}

	

	
}
