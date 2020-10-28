package com.kg.myapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.kg.myapp.vo.EmpDetailVO;
import com.kg.myapp.vo.EmpVO;

@Repository
public class EmpRepository implements IEmpRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;

	RowMapper<EmpVO> empMapper = new RowMapper<EmpVO>() { 
		
		@Override
		public EmpVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			EmpVO emp = new EmpVO();
			emp.setEmployeeId(rs.getInt("employee_id"));
			emp.setFirstName(rs.getString("first_name"));
			emp.setLastName(rs.getString("Last_name"));
			emp.setEmail(rs.getString("email"));
			emp.setPhoneNumber(rs.getString("Phone_number"));
			emp.setHireDate(rs.getDate("hire_date"));
			emp.setJoinId(rs.getString("job_id"));
			emp.setSalary(rs.getDouble("salary"));
			emp.setCommissionPct(rs.getDouble("commission_pct"));
			emp.setManagerId(rs.getInt("manager_id"));
			emp.setDepartmentId(rs.getInt("department_id"));

			return emp;
		}

	}; // 익명 클래스 RowMapper = interface

	private class EmpMapper implements RowMapper<EmpVO>{
		public EmpVO mapRow(ResultSet rs, int count) throws SQLException  {
			EmpVO emp = new EmpVO();
			emp.setEmployeeId(rs.getInt("employee_id"));
			emp.setFirstName(rs.getString("first_name"));
			emp.setLastName(rs.getString("Last_name"));
			emp.setEmail(rs.getString(4));
			emp.setPhoneNumber(rs.getString(5));
			emp.setHireDate(rs.getDate(6));
			emp.setJoinId(rs.getString(7));
			emp.setSalary(rs.getDouble(8));
			emp.setCommissionPct(rs.getDouble(9));
			emp.setManagerId(rs.getInt(10));
			emp.setDepartmentId(rs.getInt(11));
			
			return emp;
			}}

	public EmpVO selectEmployee(int empId) {
		String sql = "select * from employees where employee_id=?";
		return jdbcTemplate.queryForObject(sql, empMapper, empId);// empId 매개변수 넣기
	}
	
	public List<EmpVO> selectAllEmployees(){
		String sql ="select * from employees";
		return jdbcTemplate.query(sql,empMapper);
	}

	@Override
	public int getEmpCount() {
		String sql = "select count(*) from employees";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	@Override
	public int getEmpCount(int deptId) {
		String sql = "select count(*) from employees where department_id=?";
		return jdbcTemplate.queryForObject(sql, Integer.class, deptId);
	}

	@Override
	public List<EmpVO> getEmpList() {
		String sql="select*from employees";
		return jdbcTemplate.query(sql, new EmpMapper());
	}
	
	/*
	 * @Override public EmpVO getEmpInfo(int empId) { String sql =
	 * "select count(*) from employees where department_id=?"; return
	 * jdbcTemplate.queryForObject(sql, new EmpMapper(), empId); }
	 */

	@Override
	public void insertEmp(EmpVO emp) {
		String sql= "insert into employees" +"values(?,?,?,?,?,sysdate,?,?,?,?,?)";
		jdbcTemplate.update(sql,emp.getEmployeeId(),
				emp.getFirstName(),emp.getLastName(),emp.getEmail(),
				emp.getPhoneNumber(),emp.getJoinId(),emp.getSalary(),
				emp.getCommissionPct(),emp.getManagerId(),emp.getDepartmentId()
				);
	}
	
	@Override
	public void updateEmp(EmpVO emp) {
		String sql= "update employees set first_name=?, last_name=?,"
				+"email=?,phone_number=?, hire_date=?,job_id=?,"
				+"salary=?,commissio_pct=?,manager_id=?,"
				+"department_id=? where employee_id=?";
		jdbcTemplate.update(sql,emp.getFirstName(),
				emp.getLastName(),emp.getEmail(),
				emp.getPhoneNumber(),emp.getHireDate(),emp.getJoinId(),emp.getSalary(),
				emp.getCommissionPct(),emp.getManagerId(),emp.getDepartmentId(),
				emp.getEmployeeId());
		
	}


	@Override
	public void deleteEmp(int empId) {
    String sql="delete from employees where employee_id=?";
    jdbcTemplate.update(sql,empId);
	}

	@Override
	public void deleteJobHistory(int empId) {
		  String sql="delete from employees where employee_id=?";
		    jdbcTemplate.update(sql,empId);
		
	}

	@Override
	public List<Map<String, Object>> getAllDeptId() {
		String sql ="select department_id as departmentId,"
				+"department_name as departmentName from departments";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List<Map<String, Object>> getAllJobId() {
		String sql="select job_id as jobId, job_title as jobTitle"
				+"from jobs";
		return jdbcTemplate.queryForList(sql);
	}

	@Override
	public List<Map<String, Object>> getAllManagerId() {
		String sql="select employee_id as managerId,"
				+"first_name||' '||last_name as managerName "
				+"from employees "
				+"where employee_id in"
				+"(select distinct manager_id from employees)";
		
		return jdbcTemplate.queryForList(sql);
	}
	
	@Override
    public EmpVO getEmpInfo(int empId) {
    	String sql="select employee_id, first_name, last_name, email, phone_number, "
    			+"hire_date, e.job_id, job_title, salary, commission_pct, e.manager_id, "
    			+"manager_name, e.department_id, department_name "
    			+"from employees e "
    			+"left join jobs j "
    			+"on e.job_id=j.job_id "
    			+"left join departments d "
    			+"on e.department_id=d.department_id "
    			+"left join "
    			+"(select employee_id manager_id, first_name||' '||last_name manager_name "
    			+"from employees "
    			+"where employee_id in (select distinct manager_id from employees)) m "
    			+"on e.manager_id=m.manager_id "
    			+"where employee_id=?";
    	
    	
    	
    	return jdbcTemplate.queryForObject(sql, new RowMapper<EmpDetailVO>() {

			@Override
			public EmpDetailVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				EmpDetailVO emp = new EmpDetailVO();
				emp.setEmployeeId(rs.getInt("employee_id"));
				emp.setFirstName(rs.getString("first_name"));
				emp.setLastName(rs.getString("Last_name"));
				emp.setEmail(rs.getString("email"));
				emp.setPhoneNumber(rs.getString("Phone_number"));
				emp.setHireDate(rs.getDate("hire_date"));
				emp.setJoinId(rs.getString("job_id"));
				emp.setSalary(rs.getDouble("salary"));
				emp.setCommissionPct(rs.getDouble("commission_pct"));
				emp.setManagerId(rs.getInt("manager_id"));
				emp.setDepartmentId(rs.getInt("department_id"));
				emp.setJobTitle(rs.getString("job_title"));
				emp.setManagerName(rs.getString("Manager_name"));
				emp.setDepartmentName(rs.getString("department_name"));
				return emp;
			}
    		
    	},empId);
    			
    }

	@Override
	public List<EmpVO> getEmpListt(int deptId) {
		String sql="select* from employees where department_id=?";
		return jdbcTemplate.query(sql, empMapper,deptId);
	}

	@Override
	public List<EmpVO> getNameList(String name) {
		String sql="select * from employees where first_name like %?% || last_name like %?%";
		return jdbcTemplate.query(sql, empMapper, name);
	}

	

   //arrayList 와 list의 차이 -> 
}
