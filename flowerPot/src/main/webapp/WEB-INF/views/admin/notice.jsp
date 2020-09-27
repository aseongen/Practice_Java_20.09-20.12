<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<a class="navbar-brand" href="#">소통 관리</a>
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
						<div class="col-md-1">
						<div class="row">
						<button class="btn btn-izone btn-flat pull-right" 
			onclick="location='${pageContext.request.contextPath}/admin/customer/notice'"
			style="background-color: white; border: 2px solid #9765da; WIDTH: 60px; color: black; ">공지</button>
						</div>
						<div class="row">
						<button class="btn btn-izone btn-flat pull-right" 
			onclick="location='${pageContext.request.contextPath}/admin/customer/faq'"
			style="background-color: white; border: 2px solid #9765da; WIDTH: 60px; color: black; "> FAQ </button>
						</div>
						<div class="row">
						<button class="btn btn-izone btn-flat pull-right" 
			onclick="location='${pageContext.request.contextPath}/admin/customer/q&a'"
			style="background-color: white; border: 2px solid #9765da; WIDTH: 60px; color: black; "> Q&A </button>
						</div>
						</div>
						<div class="col-md-8">
							<div class="card">
								<div class="header">
									<h4 class="title" style="display:inline-block;">공지 사항</h4>
			<button class="btn btn-izone btn-flat pull-right" 
			onclick="location='${pageContext.request.contextPath}/admin/customer/notice_write'"
			style="background-color: #9765da; color: white; ">등록</button>
									
									<p class="category">
									<ul class="nav navbar-nav navbar-center" style="margin-left:-15px;">

										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown">
												<p style=" color:gray;">
													카테고리 <b class="caret"></b>
												</p>
										</a>
											<ul class="dropdown-menu">
												<li><a href="${pageContext.request.contextPath}/admin/customer/notice">공지사항</a></li>
												<li><a href="${pageContext.request.contextPath}/admin/customer/faq">F A Q</a></li>
												<li><a href="${pageContext.request.contextPath}/admin/customer/q&a">Q & A</a></li>
												<!-- <li class="divider"></li>
												<li><a href="#">추가기능(예정)</a></li> -->
											</ul></li>
										<!-- <li class="separator hidden-lg hidden-md"></li> 뭔지 모르겠음 -->
									</ul>
									</p>
								</div>
								<div class="content table-responsive table-full-width">
									<table class="table table-hover table-striped">
										<!-- 게시글 목록 출력 -->
										<thead>
											<th>번호</th>
											<th>제목</th>
											<th>등록날짜</th>
											<th>수정날짜</th>
											<th> </th>
										</thead>
										<tbody>
											<c:forEach var="notice" items="${nList}">
												<tr>
													<td>${notice.ccno}</td>
													<td>${notice.title}</td>
													<td>
													<fmt:formatDate value="${notice.regDate}" pattern="yyyy년 MM월 dd일"/> 
													</td>
													<td>
													<c:if test="${!empty notice.modDate}">
													<fmt:formatDate value="${notice.modDate}" pattern="yyyy년 MM월 dd일"/> 
													</c:if>
													<c:if test="${empty notice.modDate}">
													미수정
													</c:if>
													</td>
													<td><button onclick="location='${pageContext.request.contextPath}/admin/customer/notice_content/${notice.ccno}'">내용</button>
													<button onclick="location='${pageContext.request.contextPath}/admin/customer/notice_del/${notice.ccno}'">삭제</button></td>
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
												<option value="ccno">번호</option>
												<option value="title">제목</option>
												<option value="content">내용</option>
												<option value="titleContent">제목+내용</option>
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
										<!-- 페이징 처리 부분  -->
									<div class="paging" style="text-align: center;">
										<ul class="pagination justify-content-center">
											<!-- 이전 버튼 -->
											<c:if test="${pc.prev}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/customer/notice${pc.makeURI(pc.beginPage - 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">이전</a>
												</li>
											</c:if>

											<!-- 페이지 버튼 -->
											<c:forEach var="pageNum" begin="${pc.beginPage}"
												end="${pc.endPage}">
												<li class="page-item"><a
													href="<c:url value='/admin/customer/notice${pc.makeURI(pageNum)}'/>"
													class="page-link ${(pc.paging.page == pageNum) ? 'page-active' : ''}"
													style="margin-top: 0; height: 40px; color: #9765da; border: 1px solid #d3d3d3;">${pageNum}</a>
												</li>
											</c:forEach>

											<!-- 다음 버튼 -->
											<c:if test="${pc.next}">
												<li class="page-item"><a class="page-link"
													href="<c:url value='/admin/customer/notice${pc.makeURI(pc.endPage + 1)}' />"
													style="background-color: #9765da; margin-top: 0; height: 40px; color: white; border: 0px solid #d3d3d3; opacity: 0.8">다음</a>
												</li>
											</c:if>
										</ul>
									</div>	


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
		location.href="${pageContext.request.contextPath}/admin/customer/notice?keyword="+keyword+"&condition="+condition;
	});
	
	$('#keywordInput').keydown(function(key){
		if(key.keyCode == 13){
			$('#searchBtn').click();
		}
	});
});

const result = "${msg}";
if(result==="writeSuccess"){
	alert('공지사항이 성공적으로 등록 되었습니다.');
}else if(result==="modSuccess"){
	alert('공지사항이 성공적으로 수정 되었습니다.');	
}else if(result==="delSuccess"){
	alert('공지사항이 성공적으로 삭제 되었습니다.');	
}

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
