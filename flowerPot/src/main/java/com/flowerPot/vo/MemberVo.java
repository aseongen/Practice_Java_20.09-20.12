package com.flowerPot.vo;

import java.time.LocalDateTime;

import java.util.List;

import com.flowerPot.admin.vo.EmpVo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVo {
	private Integer mno;
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String address;
	private String email;
	private String gender;
	private String birth;
	private String member_rank;
	private Boolean enabled;
	private LocalDateTime regdate;
	private List<AuthorityVo> authList;
//	private List<EmpVo> empList;
	
	
	
	public MemberVo(int mno, String id, String password, String name, String nickname, String address, String email,
			String gender, String birth, String member_rank, Boolean enabled) {
		super();
		this.mno = mno;
		this.id = id;
		this.password = password;
		this.name = name;
		this.nickname = nickname;
		this.address = address;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
		this.member_rank = member_rank;
		this.enabled = enabled;
	}



	
	
}

