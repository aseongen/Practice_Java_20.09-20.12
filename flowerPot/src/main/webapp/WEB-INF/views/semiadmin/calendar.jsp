<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- https://fullcalendar.io/docs/initialize-globals  -->

<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset='utf-8' />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Datatable - Voler Admin Dashboard</title>

<link rel="stylesheet"
	href="../resources/semiadmin_css/assets/css/bootstrap.css">

<link rel="stylesheet"
	href="../resources/semiadmin_css/assets/vendors/simple-datatables/style.css">

<link rel="stylesheet"
	href="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet"
	href="../resources/semiadmin_css/assets/css/app.css">
<link rel="shortcut icon"
	href="../resources/semiadmin_css/assets/images/favicon.svg"
	type="image/x-icon">

<!-- calendar script -->
<link href='../resources/semiadmin_css/calendar/main.css'
	rel='stylesheet' />
<script src='../resources/semiadmin_css/calendar/main.js'></script>

<style>
#calendar{
  width:70%; height:60%; margin-left:200px;
}
</style>

</head>
<body>

	<div id="app">
		<div id="sidebar" class='active'>
			<div class="sidebar-wrapper active">
				<div class="sidebar-header">
					<img src="../resources/semiadmin_css/assets/images/logo2.JPG"
						alt="" srcset="" style="width: 80%; height: 80%">
				</div>
				<div class="sidebar-menu">
					<ul class="menu">

						<li class='sidebar-title'>Main Menu</li>

						<li class="sidebar-item">
						  	<a href="index" class='sidebar-link'>
								<i data-feather="home" width="20"></i> 
								<span>Dashboard</span>
						</a></li>

						<li class="sidebar-item ">
							<a href="semi_notice" class='sidebar-link'>
							 <i data-feather="layers" width="20"></i>
								<span>공지사항</span>
						</a></li>


						<li class='sidebar-title'>오늘의 &amp; 할 일</li>

						<li class="sidebar-item">
							<a href="form_editor" class='sidebar-link'> 
							<i data-feather="briefcase" width="20"></i>
								<span>배송관리</span>
						</a></li>

						<li class="sidebar-item">
							<a href="inventory"	class='sidebar-link'>
								 <i data-feather="layers" width="20"></i>
								<span>재고관리</span>
						</a></li>

						<li class="sidebar-item">
							<a href="review" class='sidebar-link'> 
								<i data-feather="file-plus" width="20"></i>
									<span>Review후기</span>
						</a>
						<li class="sidebar-item  has-sub">
							<a href="#"	class='sidebar-link'> 
								<i data-feather="trending-up" width="20"></i>
								<span>현황 Charts</span>
						</a>

							<ul class="submenu ">
								<li><a href="ui_chart_chartjs">재고수량</a></li>
								<li><a href="ui_chart_apexchart">품목별 판매량</a></li>
							</ul></li>

						<li class='sidebar-title'>개인 스케줄</li>

						<li class="sidebar-item active">
						   <a href="form_layout" class='sidebar-link'> 
						      <i data-feather="layout" width="20"></i>
								<span>Calendar</span>
						   </a>
					    </li>

						<li class="sidebar-item">
						  <a href="todolist" class='sidebar-link'> 
						     <i data-feather="layers" width="20"></i>
								<span>To-do List</</span>
						  </a>
						</li> 
						
					</ul>
				</div>
				
				<button class="sidebar-toggler btn x">
					<i data-feather="x"></i>
				</button>
			</div>
		</div>
		
		<div id="main">
			<nav class="navbar navbar-header navbar-expand navbar-light">
				<a class="sidebar-toggler" href="#"> <span
					class="navbar-toggler-icon"></span></a>
				<button class="btn navbar-toggler" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul	class="navbar-nav d-flex align-items-center navbar-light ml-auto">
					
						<li class="dropdown nav-icon">
						   <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="bell"></i>
								</div>
						   </a>
						
							   <div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
								  <h6 class='py-2 px-4'>Notifications</h6>
								    <ul class="list-group rounded-none">
									   <li class="list-group-item border-0 align-items-start">
									    	<div class="avatar bg-success mr-3">
										    	<span class="avatar-content">
												<i data-feather="shopping-cart"></i></span>
											</div>
										<div>
											<h6 class='text-bold'>New Order</h6>
											<p class='text-xs'>An order made by Light &emp; Salt for FlowerPot</p>
										</div>
									</li>
								</ul>
							</div>
							</li>
							
						<li class="dropdown nav-icon mr-2">
						<a href="#"	data-toggle="dropdown"
							class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
								<div class="d-lg-inline-block">
									<i data-feather="mail"></i>
								</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#">
									<i data-feather="user"></i>
									Account</a> <a class="dropdown-item active" href="#">
									<i data-feather="mail"></i> Messages</a> 
									<a class="dropdown-item" href="#">
									<i data-feather="settings"></i> Settings</a>
								 	<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">
									<i data-feather="log-out"></i>Logout</a>
							</div></li>
							
						<li class="dropdown">
						<a href="#" data-toggle="dropdown"
							class="nav-link dropdown-toggle nav-link-lg nav-link-user">
								<div class="avatar mr-1">
									<img src="../resources/semiadmin_css/assets/images/avatar/avatar-s-1.png" alt="" srcset="">
								</div>
								<div class="d-none d-md-block d-lg-inline-block">Hi, 성은</div>
						</a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#"><i data-feather="user"></i>Account</a> 
									<a class="dropdown-item active" href="#">
									<i data-feather="mail"></i> Messages</a> 
									<a class="dropdown-item" href="#">
									<i data-feather="settings"></i> Settings</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">
								<i data-feather="log-out"></i>Logout</a>
							</div></li>
					</ul>
				</div>
			</nav>
    <button type="button" class="btn btn-outline-primary block" data-toggle="modal" 
    data-target="#default" style="margin-left:1165px; margin-bottom:10px;">
                        Launch Modal
                        </button>

			<!-- calendar start  -->
			<div id='calendar' ></div>
			<!-- calendar end -->
			
                        <!--Basic Modal -->
                        <div class="modal fade text-left" id="default" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
                        aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="myModalLabel1">모달창 안의 모달창 제목 	</h5>
                                        <button type="button" class="close rounded-pill" data-dismiss="modal" aria-label="Close">
                                            <i data-feather="x"></i>
                                        </button>
                                    </div>
                                    
<!--  modal  -->
                                    <div class="modal-body">
                                        <p>
                                                                                            날짜 선택 : <br/>
                                                                                            일정 내용 :   <input type ="text" name="modal"  ><br/>
                                     		 
                                        </p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn" data-dismiss="modal">
                                            <i class="bx bx-x d-block d-sm-none"></i>
                                            <span class="d-none d-sm-block">Close</span>
                                        </button>
                                        <button type="button" class="btn btn-primary ml-1" data-dismiss="modal">
                                            <i class="bx bx-check d-block d-sm-none"></i>
                                            <span class="d-none d-sm-block">Accept</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			
<!-- Bordered table end -->
			<footer>
				<div class="footer clearfix mb-0 text-muted">
					<div class="float-left">
						<p>2020 &copy; FlowerPot</p>
					</div>
					<div class="float-right">
						<p>	Crafted with 
							<span class='text-danger'> 
							<i data-feather="heart"></i></span> by
							 <a href="http://ahmadsaugi.com">Light & Salt</a>
						</p>
					</div>
				</div>
				
			</footer>
		</div>
	</div>

	<script
		src="../resources/semiadmin_css/assets/js/feather-icons/feather.min.js"></script>
	<script
		src="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="../resources/semiadmin_css/assets/js/app.js"></script>

	<script
		src="../resources/semiadmin_css/assets/vendors/simple-datatables/simple-datatables.js"></script>
	<script src="../resources/semiadmin_css/assets/js/vendors.js"></script>

	<script src="../resources/semiadmin_css/assets/js/main.js"></script>
	
	<!-- calendar script -->
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				initialView : 'dayGridMonth'
			});
			calendar.render();
		});
	</script>

</body>
</html>