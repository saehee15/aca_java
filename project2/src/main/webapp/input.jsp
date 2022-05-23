<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

<form name="myform" id="myform">
 아이디: <input type="text" name="user_id" /> <br />
 비밀번호: <input type="password" name="user_pw" /> <br />
 
 <input type="checkbox" name="subject" value="java" checked />java <br/>
 <input type="checkbox" name="subject" value="C언어" />C언어 <br/>
 <input type="checkbox" name="subject" value="JSP" />JSP <br/>
 <input type="checkbox" name="subject" value="안드로이드" />안드로이드 <br/>

<!--  button 태그 자체는 아무말도 없으면 submit 무조건 서버로 정보전송, type="button" 타입을 붙이면 버튼을 붙일때만 일반 버튼으로 작동해, 서버로 안 보냄-->
<button type="button" id="btnSend">보내기</button> <!-- 1번일경우 -->
<button>서버로 무조건 전송</button> <!-- type없으면 무조건 전송 --> <!-- 2번일경우 -->
</form>
</body>
</html>

<script>
// jquery로 보내기, cdn 가져오기
// name속성 사용방법이 id보다 어렵다. 그래서 id로 접근
<!-- 위의 버튼 1번일경우 -->
$(document).ready(function () {
	$("#btnSend").click(function() {
		// action 속성값을 부여하는 방법 attr(1.1미만 버전), 그 이후 prop 함수 사용
		$("#myform").prop("method", "post");
		$("#myform").prop("action", "/project2/input.do")
		$("#myform")[0].submit();
	})
})


// submit 버튼을 사용해 서버로 보낼때는 (button에 타입없고, 무조건 전송일떄 경우)
// action의 값이 없어서 나 자신 호출, 데이터 지워짐 그걸 막기위해, event.preventDefalut()
<!-- 위의 버튼 2번일경우 -->
$("#myform").submit(function (event) {
	alert("무조건 전송누를때");
	event.preventDefalut(); // 원래 갖고 있던 기능을 막는다. 서버로 가는것을 막는다.
	
	$("#myform").prop("method", "post"); //#myform 대신 this 써도 되고
	$("#myform").prop("action", "/project2/input.do")
	$("#myform")[0].submit();
})



</script>