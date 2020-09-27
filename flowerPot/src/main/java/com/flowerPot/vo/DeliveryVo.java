package com.flowerPot.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class DeliveryVo {

	private Integer dno;
	private String deliver_num;
	private String postcode;
	private String street_address;
	private String parcel_address;
	private String detail_address;
	private String more_infomation;
	private String deliver_state;
	
	public DeliveryVo(String deliver_num, String postcode, String street_address, String parcel_address,
			String detail_address, String more_infomation) {
		super();
		this.deliver_num = deliver_num;
		this.postcode = postcode;
		this.street_address = street_address;
		this.parcel_address = parcel_address;
		this.detail_address = detail_address;
		this.more_infomation = more_infomation;
	}
}
