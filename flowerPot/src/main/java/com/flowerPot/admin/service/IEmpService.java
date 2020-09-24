package com.flowerPot.admin.service;

import java.util.List;

import com.flowerPot.admin.commons.SearchVO;
import com.flowerPot.admin.vo.EmpVo;

public interface IEmpService {

	void insertEmpOne(EmpVo emp);

	List<EmpVo> selectEmpList(SearchVO search);

	void deleteEmpOne(EmpVo emp);

	Integer countArticles(SearchVO search);

}
