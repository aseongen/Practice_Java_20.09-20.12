<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../info/header2.jsp"></jsp:include>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">로그인</h2>
</section>

<section class="bg0 p-t-50 p-b-116">
		<div class="container">
		
				<div class="p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">
					<form name="f" action="${pageContext.request.contextPath }/login" method="post">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
						
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="id" placeholder="아이디">
						</div>
						
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="password" placeholder="비밀번호">
						</div>
				
						<button type="submit" class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							Submit
						</button>
						
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