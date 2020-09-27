<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Light Bootstrap Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="../resources/assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="../resources/assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link
	href="../resources/assets/css/light-bootstrap-dashboard.css?v=1.4.0"
	rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="../resources/assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="../resources/assets/css/pe-icon-7-stroke.css"
	rel="stylesheet" />
</head>

<script src="../resources/js/admin_employee.js"></script>
<script src="../resources/js/jquery.js"></script>
<body>

	<div class="wrapper">
		<jsp:include page="sidebar.jsp" />
		<%--사이드바 --%>


		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">직원 관리</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-dashboard"></i>
									<p class="hidden-lg hidden-md">Dashboard</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
									class="caret hidden-sm hidden-xs"></b> <span
									class="notification hidden-sm hidden-xs">5</span>
									<p class="hidden-lg hidden-md">
										5 Notifications <b class="caret"></b>
									</p>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Notification 1</a></li>
									<li><a href="#">Notification 2</a></li>
									<li><a href="#">Notification 3</a></li>
									<li><a href="#">Notification 4</a></li>
									<li><a href="#">Another notification</a></li>
								</ul></li>
							<li><a href=""> <i class="fa fa-search"></i>
									<p class="hidden-lg hidden-md">Search</p>
							</a></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="">
									<p>Account</p>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">
									<p>
										Dropdown <b class="caret"></b>
									</p>

							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
							<li><a href="#">
									<p>Log out</p>
							</a></li>
							<li class="separator hidden-lg hidden-md"></li>
						</ul>
					</div>
				</div>
			</nav>
			<div>
			</div>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">사원 등록</h4>
                            </div>
                            <div class="content">

                                <form action="${pageContext.request.contextPath}/admin/empAdd" method="post" onsubmit="return check();">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>Company (disabled)</label>
                                                <input type="text" class="form-control" disabled placeholder="Company" value="FlowerPot Inc.">
                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label>부서</label>
                                                <select id="department" class="form-control" name="deptNo">
													<option value="10">기획</option>
													<option value="20">총무</option>
													<option value="30">인사</option>
													<option value="40">개발</option>
													<option value="50">물류</option>
												</select>
<!--                                                 <input type="text" class="form-control" name="" placeholder="부서" value="인사">
 -->                                            </div>
                                        </div>
                                        <div class="col-md-1">
                                            <div class="form-group">
                                                <label>직위</label>
                                                <select id="position" class="form-control" name="poNo">
													<option value="1">알바</option>
													<option value="2">인턴</option>
													<option value="3">사원</option>
													<option value="4">주임</option>
													<option value="5">대리</option>
													<option value="6">팀장</option>
													<option value="7">과장</option>
													<option value="8">차장</option>
													<option value="9">부장</option>
													<option value="10">이사</option>
													<option value="11">상무</option>
													<option value="12">전무</option>
													<option value="13">부사장</option>
													<option value="14">사장</option>
													<option value="15">부회장</option>
													<option value="16">회장</option>
												</select>
<!--                                                 <input type="text" class="form-control" name="" placeholder="직위" value="팀장">
 -->                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>사원ID</label>
                                                <input type="text" id="empId" class="form-control" name="empId" placeholder="아이디" >
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label>이름</label>
                                                <input type="text" id="empName" class="form-control" name="empName" placeholder="이름">
                                            </div>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-izone btn-flat pull-right" style="background-color: #9765da; color: white;">등록</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title" style="display:inline-block;">직원 목록</h4>
<!-- 									<p class="category">부제</p>
 -->								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<!-- 게시글 목록 출력 -->
										<thead>
											<th>사원 번호</th>
											<th>사원 ID</th>
											<th>이름</th>
											<th>부서</th>
											<th>직급</th>
											<th>권한</th>
											<th>비고</th>
										</thead>
										<tbody>
											<c:forEach var="emp" items="${eList}">
												<tr>
												
													<td>${emp.empNo}</td>
													<td>
													<c:if test="${empty emp.empId}">미발급</c:if>
													<c:if test="${!empty emp.empId}">${emp.empId}</c:if>
													</td>
													<td>${emp.empName}</td>
													<c:forEach var="dept" items="${emp.deptList}">
													<td>${dept.deptName}</td>
													</c:forEach>
													<c:forEach var="po" items="${emp.poList}">
													<td>${po.poName}</td>
													</c:forEach>
													<td></td>
													<td><button onclick="location='#'">권한 변경</button></td>
													<td><button class=" pull-right" onclick="location='#'">아이디 발급</button></td>
													
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
								<!-- 검색 기능 -->
									<div style="display:inline-block;display:inline-block; float:right; margin-right:60px;">
										<div class="conditionBox" style="display: inline-block; width: 80px;">
											<select id="condition" class="form-control" name="condition">
												<option value="empNo">번호</option>
												<option value="empId">ID</option>
												<option value="empName">이름</option>
											</select>
										</div>
										<div class="input-group" style="display:inline-flex;">
											<input type="text"  class="form-control" name="keyword"
												id="keywordInput" placeholder="검색어"> <span
												class="input-group-btn"> <input type="button" style="background-color: #9765da; color: white;"
												value="검색" class="btn btn-izone btn-flat" id="searchBtn">
											</span>
										</div>
									</div>
						</div>
										<!-- 페이징 처리 부분  -->
									<div class="paging" style="text-align: center;">
										<ul class="pagination justify-content-center">
											<!-- 이전 버튼 -->
											<c:if test="${pc.prev}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/employee${pc.makeURI(pc.beginPage - 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">이전</a>
												</li>
											</c:if>

											<!-- 페이지 버튼 -->
											<c:forEach var="pageNum" begin="${pc.beginPage}"
												end="${pc.endPage}">
												<li class="page-item"><a
													href="<c:url value='/admin/employee${pc.makeURI(pageNum)}'/>"
													class="page-link ${(pc.paging.page == pageNum) ? 'page-active' : ''}"
													style="margin-top: 0; height: 40px; color: #9765da; border: 1px solid #d3d3d3;">${pageNum}</a>
												</li>
											</c:forEach>

											<!-- 다음 버튼 -->
											<c:if test="${pc.next}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/employee${pc.makeURI(pc.endPage + 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">다음</a>
												</li>
											</c:if>
										</ul>
									</div>	


					</div>
				</div>
			</div>

			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="#"> Home </a></li>
							<li><a href="#"> Company </a></li>
							<li><a href="#"> Portfolio </a></li>
							<li><a href="#"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy;
						<script>document.write(new Date().getFullYear())</script>
						<a href="http://www.creative-tim.com">Creative Tim</a>, made with
						love for a better web
					</p>
				</div>
			</footer>


		</div>
	</div>


</body>

<script>
$(function() {
	$('#searchBtn').click(function(){
		console.log('검색버튼이 클릭됨!');
		let keyword = $('#keywordInput').val();
		console.log('검색어 : '+keyword);
		const condition = $('#condition option:selected').val();
		console.log('검색조건 : '+condition);
		location.href="${pageContext.request.contextPath}/admin/employee?keyword="+keyword+"&condition="+condition;
	});
	
	$('#keywordInput').keydown(function(key){
		if(key.keyCode == 13){
			$('#searchBtn').click();
		}
	});
});
</script>
<!--   Core JS Files   -->
<script src="../resources/assets/js/jquery.3.2.1.min.js"
	type="text/javascript"></script>
<script src="../resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="../resources/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="../resources/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script
	src="../resources/assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="../resources/assets/js/demo.js"></script>


</html>
