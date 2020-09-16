package com.flowerPot.dao;

import com.flowerPot.vo.MemberVo;

public interface AuthorityDao {

	void insertAuthority(MemberVo member);

	int selectTotalCount();

	void deleteAuthorityById(String id);

}
