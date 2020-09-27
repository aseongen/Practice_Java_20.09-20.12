package com.spring.mvc.user.model;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {

	private String account;
	private String password;
	private String name;
	private Date regDate;
	
	@Override
	public String toString() {
		return "UserVO [account=" + account + ", password=" + password + ", name=" + name + ", regDate=" + regDate + "]";
	}
	
}
