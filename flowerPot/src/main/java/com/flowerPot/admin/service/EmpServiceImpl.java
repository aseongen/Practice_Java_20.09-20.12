package com.flowerPot.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.dao.EmpMapper;
import com.flowerPot.admin.vo.EmpVo;

@Service
public class EmpServiceImpl implements IEmpService {
	
	@Autowired
	private EmpMapper mapper;
	
	@Override
	public void insertEmpOne(EmpVo emp) {
		mapper.insertEmpOne(emp);		
	}

	@Override
	public List<EmpVo> selectEmpList(SearchVO search) {
		return mapper.selectEmpList(search);
	}

	@Override
	public void deleteEmpOne(EmpVo emp) {
		mapper.deleteEmpOne(emp);
	}

	@Override
	public Integer countArticles(SearchVO search) {
		return mapper.countArticles(search);
	}

}
