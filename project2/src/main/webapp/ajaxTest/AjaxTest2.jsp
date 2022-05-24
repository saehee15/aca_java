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
	<h1>Ajax 연습하기 2</h1>
	<div id="result"></div>
	<button type="button" id="btnSend">백그라운드로 정보 읽어옴	</button>
	<!-- submit을 안 할 거라 버튼만 할 거임 ajax는 전송하는 게 아니고 백그라운드로 왔다갔다 하는 거임 -->
</body>
</html>

<script>
//window.onload, $(document).ready()
// $(()=>{
	
// })

$(()=>{
	$("#btnSend").click ( ()=>{
		$.ajax({
			"url":"ajax_info.txt"
		})
		.done((data)=>{
			$("#result").html(data);
		})
		.fail((j,error)=>{
			console.log(error);   //function 빼고 화살표 함수 써도 됨 근데 this 못씀
// 		.done(function(data){
// 			$("#result").html(data);
// 		})
// 		.fail(function(j,error){
// 			console.log(error)
		});
	})
})

</script>