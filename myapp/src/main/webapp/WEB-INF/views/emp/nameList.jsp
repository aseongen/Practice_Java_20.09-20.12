<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<c:forEach var="name" items="${nameList}">
			<tr>
				<td>${emp.employeeId }</td>
				<td>${emp.firstName }</td>
				<td>${emp.lastName }</td>
				<td>${emp.email }</td>
				<td>${emp.phoneNumber }</td>
				<td>${emp.hireDate }</td>
				<td>${emp.joinId}</td>
				<td>${emp.salary }</td>
				<td>${emp.commissionPct }</td>
				<td>${emp.managerId }</td>
				<td>${emp.departmentId }</td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>