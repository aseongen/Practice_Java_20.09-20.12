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
						<a class="navbar-brand" href="#">Table List</a>
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

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title" style="display:inline-block;">직원목록</h4>
									<!-- 검색 기능 -->
									<div style="display:inline-block;display:inline-block; float:right; margin-right:60px;">
										<div class="conditionBox" style="display: inline-block; width: 80px;">
											<select id="condition" class="form-control" name="condition">
												<option value="mno">번호</option>
												<option value="id">ID</option>
												<option value="name">이름</option>
											</select>
										</div>
										<div class="input-group" style="display:inline-flex;">
											<input type="text"  class="form-control" name="keyword"
												id="keywordInput" placeholder="검색어"> <span
												class="input-group-btn"> <input type="button"
												value="검색" class="btn btn-izone btn-flat" id="searchBtn">
											</span>
										</div>
									</div>
									<p class="category">Here is a subtitle for this table</p>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<!-- 게시글 목록 출력 -->
										<thead>
											<th>번호</th>
											<th>ID</th>
											<th>이름</th>
										</thead>
										<tbody>
											<c:forEach var="user" items="${ulist}">
												<tr>
													<td>${user.mno}</td>
													<td>${user.id}</td>
													<td>${user.name}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
						</div>
										<!-- 페이징 처리 부분  -->
									<div class="paging" style="text-align: center;">
										<ul class="pagination justify-content-center">
											<!-- 이전 버튼 -->
											<c:if test="${pc.prev}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/user/list${pc.makeURI(pc.beginPage - 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">이전</a>
												</li>
											</c:if>

											<!-- 페이지 버튼 -->
											<c:forEach var="pageNum" begin="${pc.beginPage}"
												end="${pc.endPage}">
												<li class="page-item"><a
													href="<c:url value='/admin/user/list${pc.makeURI(pageNum)}'/>"
													class="page-link ${(pc.paging.page == pageNum) ? 'page-active' : ''}"
													style="margin-top: 0; height: 40px; color: #9765da; border: 1px solid #d3d3d3;">${pageNum}</a>
												</li>
											</c:forEach>

											<!-- 다음 버튼 -->
											<c:if test="${pc.next}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/user/list${pc.makeURI(pc.endPage + 1)}' />"
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
		location.href="${pageContext.request.contextPath}/admin/user/list?keyword="+keyword+"&condition="+condition;
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
