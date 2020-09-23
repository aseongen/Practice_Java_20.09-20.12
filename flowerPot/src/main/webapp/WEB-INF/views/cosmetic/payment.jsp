<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../info/header2.jsp"></jsp:include>


<section class="bg0 p-t-75 p-b-85">
	<div class="row" style="margin: 0 15px;">
		<form action="${pageContext.request.contextPath }/kakaoPay" method="post" style="margin : 0 auto;">
		<div class="col-12 m-lr-auto m-b-50">
				<h2 class="text-center py-5 font-weight-bold">주문서</h2>	
				
				<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
					<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">상품정보</div>
					<div class="wrap-table-shopping-cart">
						<table class="table-shopping-cart">
							<tr class="table_head">
								<th class="column-1 text-center">상품사진</th>
								<th class="column-2 text-center">상품이름</th>
								<th class="column-3 text-center">가격</th>
								<th class="column-4 text-center">개수</th>
								<th class="column-5 text-center">총 가격</th>
								<th class="column-5 text-center"></th>
							</tr>

							<c:forEach var="cosmetic" items="${shoppingCartList }">
								<tr class="table_row">
									<td class="column-1 text-center">
										<div class="how-itemcart1">
											<img src="${cosmetic.mappingURL }" alt="상품사진">
										</div>
									</td>
									<td class="column-2 text-center">${cosmetic.name }</td>
									<!-- 상품하나의 가격 -->
									<td class="column-2 text-center">${cosmetic.price }원</td>
									<!-- 개수선택 -->
									<td class="column-4 text-center">
										<div class="wrap-num-product flex-w m-l-auto m-r-0">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product2" value="${cosmetic.numProduct} ">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>
									</td>
									<!--  -->
									<td class="column-5 text-center">가격</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>

			<!-- 주문자 정보 --> <!-- 로그인 되어있을시,, 자동으로 입력되어야함 -->
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
				<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">주문자 정보</div>

					<div class="form-group row">
						<label for="sender" class="col-sm-2 col-form-label">보내는분</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="sender">
						</div>
					</div>
					<div class="form-group row">
						<label for="tel" class="col-sm-2 col-form-label">휴대폰 번호</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="tel" placeholder="-는 뺴고 입력해주세요">
						</div>
					</div>
					<div class="form-group row">
						<label for="email" class="col-sm-2 col-form-label">이메일</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="email">
							<small id="emailHelp" class="form-text text-muted">이메일을 통해 주문처리 과정을 보내드립니다</small>
						</div>
					</div>
			</div>
			
			<!-- 배송정보 --> <!-- 로그인 되어있을시,, 자동으로 입력되어야함 -->
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
				
				<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">배송 정보</div>
				<div class="form-group row">
					<div class="col-sm-3">
						<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
					</div>
					<div class="col-sm-3">
						<input type="button" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-4">
						<input type="text"  class="form-control" id="sample4_roadAddress" placeholder="도로명주소">
					</div>
					<div class="col-sm-4">
						<input type="text"  class="form-control" id="sample4_jibunAddress" placeholder="지번주소">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-4">
					<input type="text"  class="form-control"  id="sample4_detailAddress" placeholder="상세주소">
					</div>
					<div class="col-sm-4">
						<input type="text"  class="form-control" id="sample4_extraAddress" placeholder="참고항목">
					</div>
				</div>
			</div>
			
			<!-- 쿠폰정보 --> <!-- 로그인 되어있을시,, 자동으로 입력되어야함 -->
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
				<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">쿠폰 / 적립금</div>
			</div>
			
			<!-- 결제수단 --> 
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
				<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">결제 수단</div>
			</div>
			
			<!-- 결제 금액 요약  -->
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30">
				<div class="text-left mtext-106 font-weight-bold py-2 my-2" style="border-bottom: 2px solid #888;">결제 금액</div>
			</div>
				
			<div class="m-l-25 m-r-38 m-lr-0-xl p-t-30 p-b-30 text-center">
				<input type="submit" class="btn btn-outline-secondary btn-lg" value="결제하기">
			</div>
		</div>
		</form>
	</div>
</section>
	
<!-- <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        }
    }).open();
</script> -->

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