<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../include/header.jsp" />
<style>
header.masthead {
	
	display: none;
}	
</style>
<br/><br/>
<div class="container">

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header text-white" style="background-color: #ff52a0;">${article.boardNo}번 게시물 내용</div>
      <div class="card-body">

        
          <div class="form-group">
            <label>작성자</label>
            <input type="text" class="form-control" name='writer' value="${article.writer}" readonly>
          </div>
          
          <div class="form-group">
            <label>제목</label>
            <input type="text" class="form-control" name='title' value="${article.title}" readonly>
          </div>

          <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="5" name='content' readonly>${article.content}</textarea>
          </div>

         
        <form id= "formObj" role="form" action="<c:url value='/board/delete'/>" method="post">  
          
          <input type="hidden" name="boardNo" value="${article.boardNo}">
          
          <input type="button" value="목록" class="btn" onclick="location.href='/board/list'"
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">&nbsp;&nbsp;
          
          <input id ="modBtn" type="button" value="수정" class="btn btn-warning" style="color:white;">&nbsp;&nbsp;
          
          <input type="submit" value="삭제" class="btn btn-danger" onclick="return confirm('정말로 삭제하시겠습니까?')">&nbsp;&nbsp;
        </form>

      </div>
    </div>
  </div>
</div>
</div>

<script 
src="https://code.jquery.com/jquery-3.5.1.min.js" 
integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
crossorigin="anonymous">

//제이쿼리의 시작
$(function(){
	
	//수정 완료 알림창 처리
	const msg = "${msg}"; //jsp EL 태그
	if(msg === "modSuccess"){
		alert("게시물 수정 완료!");
	}
	
	//변수는let, 실수는 const 로 선언 (ES2015문법)
	const formElement = $("#formObj");
	
	//수정버튼 클릭이벤틑 처리 
	//var modifyBtn = document.getElementById("modBtn"); vanaila js
	var modifyBtn = $("#modBtn"); // Id= #, class = . =>JQuery
	
	modifyBtn.click(function(){ //function : click 했을때 일어날 일 작성
		console.log("수정 버튼이 클릭됨!");
		formElement.attr("action", "/board/modify");
		formElement.attr("method", "get");
		formElement.submit();
	});
	
});

</script>

<jsp:include page="../include/footer.jsp" />



