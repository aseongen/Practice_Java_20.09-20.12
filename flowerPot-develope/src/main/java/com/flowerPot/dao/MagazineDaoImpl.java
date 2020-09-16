package com.flowerPot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.flowerPot.domain.Criteria;
import com.flowerPot.vo.MagazineVo;

@Repository
public class MagazineDaoImpl implements MagazineDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMagazine(MagazineVo magazine) {
		sqlSession.insert("insertMagazine", magazine);
	}

	@Override
	public List<MagazineVo> selectMagazineList(Criteria c) {
		return sqlSession.selectList("selectMagazineList",c);
	}

	@Override
	public MagazineVo selectMagzineCont(MagazineVo mgno) {
		return sqlSession.selectOne("selectMagzineCont", mgno);
	}

	@Override
	public void deleteMagazine(int mgno) {
		sqlSession.delete("deleteMagazine", mgno);
	}

	@Override
	public void updateMagazine(MagazineVo magazineVo) {
		sqlSession.update("updateMagazine",magazineVo);
		
	}

	@Override
	public int getTotalCount(Criteria c) {
		return sqlSession.selectOne("getTotalCount", c);
	}
	
}
