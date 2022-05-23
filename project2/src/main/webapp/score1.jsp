<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- score1은 선생님 코드, score는 내가 작성 -->
<!-- 서버로 정보를 보낼려면 반드시 form태그안에 input, textarea, select있어야 한다.
	name속성만 서버로 정보를 전송한다. -->
<form name="myform" method="post" action="">
	
	이름: <input type="text" name="name"> <br/>
	국어: <input type="text" name="kor" /> <br/>
	영어: <input type="text" name="eng" /> <br/>
	수학: <input type="text" name="mat" /> <br/>
	
	<button type="button" id="btnSend">결과확인</button>


</form>

<script>
	// 원래 자바스크립트 목적
	window.onload = function () {
		var btnSend = document.getElementById("btnSend");
		btnSend.addEventListener("click",function(){
			// 폼객체 가져오기
			var frm = document.myform;
			frm.action = "/project2/score1.do"; //project2가 컨텍스트 패스라고 함
			frm.submit(); //서버로 전송하는 함수 호출하기 - 호출 안하면 아무짓도 안함
		})
	}

</script>
</body>
</html>