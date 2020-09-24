package com.flowerPot.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.flowerPot.dao.AuthorityDao;
import com.flowerPot.member.repository.MemberDao;
import com.flowerPot.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberSerivce {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private AuthorityDao authorityDao;
	

	@Transactional
	@Override
	public void insertMember(MemberVo member) {
		memberDao.insertMember(member);
		authorityDao.insertAuthority(member);
	}

}
