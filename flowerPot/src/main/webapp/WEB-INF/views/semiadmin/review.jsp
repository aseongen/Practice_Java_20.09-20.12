<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datatable - Voler Admin Dashboard</title>
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/vendors/simple-datatables/style.css">

    <link rel="stylesheet" href="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/app.css">
    <link rel="shortcut icon" href="../resources/semiadmin_css/assets/images/favicon.svg" type="image/x-icon">

<style>
.delButton{ display: inline-block; padding: 0.4rem 0.55rem; 
                          font-size: 0.75rem; font-weight: 500; line-height: 1; 
                          background-color:#5A8DEE; border-color: #5A8DEE;
                          color: #fff; text-align: center; white-space: nowrap; 
                          vertical-align: baseline; border-radius: 1rem;}
</style>

</head>



<body>
    <div id="app">
     <jsp:include page="sidebar.jsp"></jsp:include>
        <div id="main">
            <nav class="navbar navbar-header navbar-expand navbar-light">
                <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
                <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
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
                                            <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                                        </div>
                                        <div>
                                            <h6 class='text-bold'>New Order</h6>
                                            <p class='text-xs'>
                                                An order made by Ahmad Saugi for product Samsung Galaxy S69
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown nav-icon mr-2">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="mail"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="avatar mr-1">
                                    <img src="../resources/semiadmin_css/assets/images/avatar/avatar-s-1.png" alt="" srcset="">
                                </div>
                                <div class="d-none d-md-block d-lg-inline-block">Hi, 성은</div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
<!-- Review 후기  메인  -->  
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Review 후기 </h3>
                <p class="text-subtitle text-muted">FlowerPot SemiAdmin Notice <a href="https://github.com/fiduswriter/Simple-DataTables/wiki">here</a>.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="dashboard">Main</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Review 후기</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
              Review 후기
            </div>
            <div class="card-body">
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th>게시글번호</th>
                            <th>상품번호</th>
                            <th>멤버번호</th>
                            <th>카테고리</th>
                            <th>아이디</th>
                            <th>닉네임</th>
                            <th>제목</th>
                            <th>내용</th>
                            <th>별점</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="r" items="${relist}">
                        <tr >
                            <td>${r.crno}</td>
                            <td>${r.cno}</td>
                            <td>${r.mno}</td>
                            <td>${r.category}</td>
                            <td>${r.id}</td>
                            <td>${r.nickname}</td>
                            <td>${r.title}</td>
                            <td>${r.content}</td>
                            <td>${r.rating}</td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<!-- Bordered table end -->
        
            <jsp:include page="footerbar.jsp"></jsp:include>
        </div>
    </div>
    
 <!--    <script type="text/javascript">
   
    const result ="delete";
    
    if(result === "delete"){
    	alert("게시글이 삭제되었습니다.");
    }else{
    	alert("삭제되지 않았습니다. 다시 확인해주세요. ");
    }
    
    </script> -->
    
 
</body>
</html>
