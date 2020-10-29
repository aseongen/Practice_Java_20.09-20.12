<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp${message}</title>
</head>
<body>

	<h1>사원정보 ${message eq 'isnert' ? '입력' : '수정'}</h1>
	<form action="${message}" method=post>

	<table border=1>
		<tr>
			<td>사원번호</td>
			<td><input type=text name=employeeId value="${emp.employeeId}" ${empty emp  ? "" : "readonly" }></td>
		</tr>
		<tr>
			<td>이름,성</td>
			<td><input type=text name=firstName value="${emp.firstName}"> 
			<input type=text name=lastName value="${emp.lastName}"></td>
		</tr>

		<tr>
			<td>이메일</td>
			<td><input type=text name=email value="${emp.email}" ${ empty emp  ? "" : "readonly" }></td>
		</tr>

		<tr>
			<td>연락처</td>
			<td><input type=text name=phoneNumber value="${emp.phoneNumber}"></td>
		</tr>

		<tr>
			<td>입사일</td>
			<td><input type=date name=hireDate value="${emp.hireDate}"></td>
		</tr>

		<tr>
			<td>직무</td>
			<td><select name="joinId">
					<c:forEach var="job" items="${jobList}">
						<option value="${job.joinId}" ${emp.jobId eq job.jobId?"selected" : ""}>${job.jobTitle}</option>
					</c:forEach>

			</select>
		</tr>

		<tr>
			<td>급여</td>
			<td><input type=text name=salary></td>
		</tr>

		<tr>
			<td>보너스율</td>
			<td><input type=number name=commissionPct min=0 max=0.95
				step=0.05></td>
		</tr>



		<tr>
			<td>매니저 부서</td>
			<td><select name=managerId>
					<c:forEach var="man" items="${manList}">
						<option value="${man.managerId}">${man.managerName}</option>
					</c:forEach>
			</select></td>
		</tr>


		<tr>
			<td>부서</td>
			<td><select name=departmentId>
					<c:forEach var="dept" items="${deptList}">
						<option value="${dept.departmentId }">${dept.departmentName}</option>
					</c:forEach>
			</select></td>
		</tr>

	</table>
	
	
		<input type=submit value="저장"> 
		<input type=reset value="취소">

</form>
</body>
</html>