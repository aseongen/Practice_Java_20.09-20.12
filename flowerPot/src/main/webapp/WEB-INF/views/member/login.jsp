<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92"
	style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">로그인</h2>
</section>

<section class="bg0 p-t-50 p-b-116">
	<div class="container">

		<div class="p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
			<form name="f" action="${pageContext.request.contextPath }/login"
				method="post">
				<h4 class="mtext-105 cl2 txt-center p-b-30"></h4>
				<h4 class="mtext-105 cl2 txt-center p-b-30"></h4>
				<a href="auth-forgot-id.html" class="float-right"> <small>Forgot
						id?</small>
				</a>
				<div class="bor8 m-b-20 how-pos4-parent">
					<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
						type="text" name="id" placeholder="아이디">
				</div>
				<a href="auth-forgot-password.html" class="float-right"> <small>Forgot
						password?</small>
				</a>
				<div class="bor8 m-b-20 how-pos4-parent">
					<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
						type="password" name="password" placeholder="비밀번호">
				</div>
				<div class="form-check clearfix my-4">
					<div class="checkbox float-left">
						<input type="checkbox" id="checkbox1" class="form-check-input">
						<label for="checkbox1">Remember me</label>
					</div>
					<div class="float-right">
						<a href="auth-register.html">Don't have an account?</a>
					</div>
				</div>
				<button type="submit"
					class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
					Submit</button>
					<div class="row">
                        <div class="col-sm-6">
                            <button class="btn btn-block mb-2 btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg> Facebook</button>
                        </div>
                        <div class="col-sm-6">
                            <button class="btn btn-block mb-2 btn-secondary"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg> Github</button>
                        </div>
                    </div>

				<c:if test="${not empty param.fail }">
					<div>
						<p>로그인에 실패 하였습니다</p>
						<p>${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
					</div>
				</c:if>
			</form>
		</div>
	</div>
</section>


<jsp:include page="../info/footer.jsp"></jsp:include>
<script src="assets/js/feather-icons/feather.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="assets/js/main.js"></script>