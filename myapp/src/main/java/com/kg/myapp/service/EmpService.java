package com.kg.myapp.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kg.myapp.dao.EmpRepository;
import com.kg.myapp.vo.EmpVO;

@Service
public class EmpService implements IEmpService {

	@Autowired
	EmpRepository empRepository;

	public EmpVO selectEmployee(int empId) {
		return empRepository.selectEmployee(empId);
	}

	public List<EmpVO> selectAllEmployees() {
		return empRepository.selectAllEmployees();
	}
//------------------------------------------------
	
	@Override
	public int getEmpCount() {
		return empRepository.getEmpCount();
	}

	@Override
	public int getEmpCount(int deptId) { //매개변수가 있음
		return empRepository.getEmpCount(deptId);
	}

	@Override
	public List<EmpVO> getEmpList() {
		return empRepository.getEmpList();
	}

	@Override
	public EmpVO getEmpInfo(int empId) {
		return empRepository.getEmpInfo(empId);
	}

	@Override
	public void updateEmp(EmpVO emp) {
		empRepository.deleteJobHistory(emp.getEmployeeId());
		empRepository.updateEmp(emp);
	}

	@Override
	public void insertEmp(EmpVO emp) {
		empRepository.insertEmp(emp);
	}

	@Override
	public void deleteEmp(int empId) {
		empRepository.deleteEmp(empId);
	}

	@Override
	public void deleteJobHistory(int empId) {
		empRepository.deleteJobHistory(empId);
	}

	@Override
	public List<Map<String, Object>> getAllDeptId() {
		return empRepository.getAllDeptId();
	}

	@Override
	public List<Map<String, Object>> getAllJobId() {
		return empRepository.getAllJobId();
	}

	@Override
	public List<Map<String, Object>> getAllManagerId() {
		return empRepository.getAllManagerId();
	}

	@Override
	public List<EmpVO> getEmpListt(int deptId) {
		return empRepository.getEmpListt(deptId);
	}

	@Override
	public List<EmpVO> getNameList(String keyword) {
		return empRepository.getNameList(keyword);
	}

}
