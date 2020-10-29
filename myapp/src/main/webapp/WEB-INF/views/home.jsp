<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h3>${message}</h3>

	<a href="emp/count"><button>1.사원의 수</button></a>

	<form action="emp/count">
		검색하려는 번호를 입력하세요: <input type=text name=deptId> 
		<input type="submit" value=검색>
	</form>

	<br>
	<a href="emp/list"><button>2. 사원 목록</button></a>
	<br>

	<br>
	<form action="emp/countview">
		부서 번호를 입력하세요:<input type=text name=deptId> 
		<input type="submit" value="검색">
	</form>
	<br>

	<form action="emp/nameList">
		검색할 이름을 입력하세요:<input type=text name=keyword> 
		<input type="submit" value="검색">
	</form>
	<br>
	
	
</body>
</html>
