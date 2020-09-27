package com.flowerPot.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.flowerPot.member.repository.MemberDao;
import com.flowerPot.security.domain.CustomUser;
import com.flowerPot.vo.MemberVo;

public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("username:" + username);
		MemberVo vo = memberDao.read(username);
		System.out.println("username:" + username);
		
		return vo == null ? null : new CustomUser(vo);
	}
	// memberVO 를 UserDetails 로 변환
}
