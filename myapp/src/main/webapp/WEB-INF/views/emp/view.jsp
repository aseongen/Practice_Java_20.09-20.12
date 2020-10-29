<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>사원목록 상세 조회</h1>
	<table border=1>
		<tr>
			<th>Employee_id</th>
			<td>${emp.employeeId}</td>
		<tr/>
		
		<tr>
			<th>First_name</th>
			<td>${emp.firstName}</td>
		</tr>
		
		<tr>
			<th>Last_name</th>
			<td>${emp.lastName}</td>
		</tr>
		
		<tr>
			<th>Email</th>
			<td>${emp.email}</td>
		</tr>
		
		<tr>
			<th>Phone_Number</th>
			<td>${emp.phoneNumber}</td>
		</tr>
		
		<tr>
			<th>Hire_date</th>
			<td>${emp.hireDate}</td>
		</tr>
		
		<tr>
			<th>Job_id</th>
			<td>${emp.jobTitle}(${emp.joinId})</td>
		</tr>
		
		<tr>
			<th>Salary</th>
			<td>${emp.salary}</td>
		</tr>
		
		<tr>
			<th>Commission_pct</th>
			<td>${emp.commissionPct}</td>
		</tr>
		
		<tr>
			<th>Manager_id</th>
			<td>${emp.managerName}(${emp.managerId})</td>
		</tr>
		
		<tr>
			<th>Department_id</th>
			<td>${emp.departmentName}${emp.departmentId}</td>
		</tr>

	</table>
	
	<a href="update/${emp.employeeId }">정보수정</a>&nbsp;&nbsp;<a href="">정보삭제</a>
	
</body>
</html>