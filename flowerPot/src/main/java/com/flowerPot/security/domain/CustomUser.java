package com.flowerPot.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.flowerPot.vo.MemberVo;

import lombok.Getter;

@Getter
public class CustomUser extends User {

	private MemberVo memberVo;
	
	
	// 부모클래스의 생성자를 호출해야만 정상적인 객체를 생성할 수 있다.
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(MemberVo vo) {
		super(vo.getId(),vo.getPassword(),vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuthority())).collect(Collectors.toList()));
		// Authority 인스턴스는 GrantedAuthority 객체로 변환해야한다.
		this.memberVo = vo;
	}
}
