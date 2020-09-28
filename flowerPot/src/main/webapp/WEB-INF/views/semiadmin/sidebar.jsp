<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="sidebar" class='active'>
	<div class="sidebar-wrapper active">
		<div class="sidebar-header">
			<img src="../resources/semiadmin_css/assets/images/logo2.JPG" style="width: 80%; height: 80%">
		</div>
		
		<div class="sidebar-menu">
			<ul class="menu">

				<li class='sidebar-title'>Main Menu</li>

				<li class="sidebar-item">
				<a href="dashboard" class='sidebar-link'> 
					<i data-feather="home" width="20"></i> <span>Dashboard</span>
				</a></li>

				<li class="sidebar-item "> 
				 	<a href="semi_notice"class='sidebar-link'> 
					<i data-feather="layers" width="20"></i>
						<span>공지사항</span>
				</a></li>

				<li class='sidebar-title'>오늘의 &amp; 할 일</li>

				<li class="sidebar-item"><a href="delivery"
					class='sidebar-link'> <i data-feather="briefcase" width="20"></i>
						<span>배송관리</span>
				</a></li>

				<li class="sidebar-item"><a href="inventory"
					class='sidebar-link'> <i data-feather="layers" width="20"></i>
						<span>재고관리</span>
				</a></li>

				<li class="sidebar-item"><a href="review" class='sidebar-link'>
						<i data-feather="file-plus" width="20"></i> <span>Review후기</span>
				</a>
				<li class="sidebar-item  has-sub">
				<a href="#"	class='sidebar-link'> 
					<i data-feather="trending-up" width="20"></i>
						<span>현황 Charts</span>
				</a>

					<ul class="submenu ">

						<li><a href="chart_count">재고수량</a></li>

						<li><a href="chart_product">품목별 판매량</a></li>
					</ul></li>

				<li class='sidebar-title'>개인 스케줄</li>

				<li class="sidebar-item ">
				<a href="calendar" class='sidebar-link'>
					<i data-feather="layout" width="20"></i>
						<span>Calendar</span>
				</a></li>

				<li class="sidebar-item">
				<a href="todolist" class='sidebar-link'>
					 <i data-feather="layers" width="20"></i>
						<span>To-do List</</span>
				</a></li>
			</ul>
		</div>

		<button class="sidebar-toggler btn x">
			<i data-feather="x"></i>
		</button>
	</div>
</div>