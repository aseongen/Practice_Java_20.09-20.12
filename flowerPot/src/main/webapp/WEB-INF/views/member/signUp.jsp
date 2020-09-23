<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../info/header2.jsp"></jsp:include>
<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('${pageContext.request.contextPath }/resources/images/bg-02.jpg');">
	<h2 class="ltext-105 cl0 txt-center">회원가입</h2>
</section>
<section class="bg0 p-t-104 p-b-116">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-7">
				<h2 class="text-center">회원가입</h2>
				<form action="${pageContext.request.contextPath }/member/signUp_ok" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">아이디</label>
						<input type="text" class="form-control form-control-lg" name="id" id="exampleInputEmail1" aria-describedby="emailHelp">
						<small id="emailHelp" class="form-text text-muted">  </small>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">비밀번호</label>
						<input type="password" class="form-control form-control-lg" name="password" id="exampleInputPassword1">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword2">비밀번호확인</label>
						<input type="password" class="form-control form-control-lg" name="password2" id="exampleInputPassword2">
					</div>
					<div class="form-group">
						<label for="exampleInputName1">이름</label>
						<input type="text" class="form-control form-control-lg" name="name" id="exampleInputName1">
					</div>
					<div class="form-group">
						<label for="exampleInputNickname1">닉네임</label>
						<input type="text" class="form-control form-control-lg" name="nickname" id="exampleInputNickname1">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">이메일</label>
						<input type="email" class="form-control form-control-lg" name="email" id="exampleInputEmail1">
					</div>
					<div class="form-group">
						<label for="exampleInputTel1">전화번호</label>
						<input type="tel" class="form-control form-control-lg" name="tel" id="exampleInputTel1">
					</div>
					<div class="form-group">
						<label for="exampleInputAddress1">주소</label>
						<input type="text" class="form-control form-control-lg" name="address" id="exampleInputAddress1">
					</div>
					<div class="form-check">
						<input type="radio" name="gender" id="exampleRadios1" value="M" style="display: inline-block">
						<label for="exampleRadios1" style="display: inline-block"> 남자 </label>
						<input type="radio" name="gender" id="exampleRadios2" value="F" style="display: inline-block">
						<label for="exampleRadios2" style="display: inline-block"> 여자 </label>
					</div>
					<button type="submit" class="btn btn-outline-secondary btn-block btn-lg">등록</button>
				</form>
				<!-- <h4 class="mtext-105 cl2 txt-center p-b-30">나의 정보</h4>
					
					<div class=" m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="" placeholder="아이디">
					</div>
					<div class="m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="" placeholder="비밀번호">
					</div>
					<div class=" m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="password" name="" placeholder="비밀번호">
					</div>
					<div class=" m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="" placeholder="이름">
					</div>
					<div class="m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="" placeholder="닉네임">
					</div>
					<div class="m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="email" name="" placeholder="이메일">
					</div>
					<div class="m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="tel" name="" placeholder="번호">
					</div>
					<div class=" m-b-20 how-pos4-parent">
						<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="" placeholder="주소">
					</div>
					
					
						<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
						  <label class="form-check-label" for="exampleRadios1">
						 	   남자
						  </label>
					
					<button class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">Submit</button>
					휴대폰 본인인증 -->
				
			</div>
		</div>
	</div>
</section>
<jsp:include page="../info/footer.jsp"></jsp:include>