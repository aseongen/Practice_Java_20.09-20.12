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
						<input type="tel" class="form-control form-control-lg" name="tel" id="exampleInputTel1" placeholder="(예시:010-1111-1111)">

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
					<div class="form-group">
					<input type="text" class="form-control form-control-lg" id="sample4_postcode" name="postcode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" class="form-control form-control-lg" id="sample4_roadAddress" name="street_address" placeholder="도로명주소">
					<input type="text" class="form-control form-control-lg" id="sample4_jibunAddress" name="parcel_address" placeholder="지번주소">
					<span id="guide" style="color:#999;display:none"></span>
					<input type="text" class="form-control form-control-lg" id="sample4_detailAddress" name="detail_address"placeholder="상세주소">
					<input type="text" class="form-control form-control-lg" id="sample4_extraAddress" name="deliver_state" placeholder="참고항목">
					</div>
					
					<button type="submit" class="btn btn-outline-secondary btn-block btn-lg">등록</button>
				</form>



			</div>
		</div>
	</div>
</section>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<jsp:include page="../info/footer.jsp"></jsp:include>