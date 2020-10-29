<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이름으로 검색하기</h3>
	<table border=1>
		<tr>
			<th>Employee_id</th>
			<th>First_name</th>
			<th>Last_name</th>
			<th>Email</th>
			<th>Phone_Number</th>
			<th>Hire_date</th>
			<th>Job_id</th>
			<th>Salary</th>
			<th>Commission_pct</th>
			<th>Manager_id</th>
			<th>Department_id</th>
		</tr>
		
		<c:set var="keyword" value="${keyword}" />
		<c:forEach var="name" items="${nameList}">
			<tr>
				<td>${name.employeeId }</td>
				<td>${name.firstName }</td>
				<td>${name.lastName }</td>
				<td>${name.email }</td>
				<td>${name.phoneNumber }</td>
				<td>${name.hireDate }</td>
				<td>${name.joinId}</td>
				<td>${name.salary }</td>
				<td>${name.commissionPct }</td>
				<td>${name.managerId }</td> 
				<td>${name.departmentId }</td>

			</tr>
		</c:forEach>
		
		<c:if test="${empty nameList }">
		<h1>검색하신 부서가 없다</h1>
		</c:if>
		
	</table>
</body>
</html>