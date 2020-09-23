package com.flowerPot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.vo.MemberVo;

@Repository
public class AuthorityDaoImpl implements AuthorityDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertAuthority(MemberVo member) {
		sqlSession.insert("au_insertAuthority",member);
	}

	@Override
	public int selectTotalCount() {
		return sqlSession.selectOne("au_selectTotalCount");
	}

	@Override
	public void deleteAuthorityById(String id) {
		sqlSession.delete("au_deleteAuthorityById",id);
	}
	
}
