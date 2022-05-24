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
	userid : <input type="text" id="userid" ><br/>
	password : <input type="text" id="password" ><br/>
	<span id="result"></span> <br/>
	
	<button id="btnSend" type="button">결과확인</button>
</body>
</html>

<script>
$(()=>{
	$("#btnSend").click ( ()=>{
		$.ajax({
			"url":"receive1.jsp",
			"data":{"userid":$("#userid").val(), "password":$("#password").val()},  //json형태로 데이터 넣는 법
			"dataType":"json"  //자동 파싱됨. 단, 상대도 json이어야 함
		})
		.done((data)=>{
			$("#result").html(data["userid"] + ", " + data["password"]);
		})
		.fail((j,error)=>{
			console.log(error);
		})
	})
})
</script>