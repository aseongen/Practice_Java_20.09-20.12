package com.flowerPot.member.repository;

import java.util.List;

import com.flowerPot.vo.MemberVo;

public interface MemberDao {

	public MemberVo read(String id);

	public void insertMember(MemberVo member);

	public int selectTotalCount();

	public void deleteMemberById(String string);
	
	//회원가입 기능
	//void register(MemberVo member);

	//아이디 중복체크 기능
	//public Integer checkId(String member);

	//회원탈퇴 기능
	//public void delete(String member);

	//회원정보 조회기능
	//public MemberVo selectOne(String member);

	//회원정보 전체 조회 기능
	//public List<MemberVo> selectAll();
}
