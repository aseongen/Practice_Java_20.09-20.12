package com.flowerPot.dao;

import com.flowerPot.vo.MemberVo;

public interface MemberDao {
	
	public MemberVo read(String id);

	public void insertMember(MemberVo member);

	public int selectTotalCount();

	public void deleteMemberById(String string);
}
