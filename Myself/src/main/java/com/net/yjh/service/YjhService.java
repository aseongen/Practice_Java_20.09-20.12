package com.net.yjh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.net.yjh.Model.yjhVO;
import com.net.yjh.repository.IYjhDAO;

@Service
@Repository
public class YjhService implements IYjhService {

	@Autowired
	private IYjhDAO dao;
	
	@Override
	public List<yjhVO> getArticles() {
		return dao.getArticles();
	}
	
	
	

}
