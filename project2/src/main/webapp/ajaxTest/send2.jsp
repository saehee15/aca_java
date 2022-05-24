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
	이름: <input type="text" id="name" /><br />
	국어: <input type="text" id="kor" /><br />
	영어: <input type="text" id="eng" /><br />
	수학: <input type="text" id="mat" /><br />
	
	
	결과: <span id="result" ></span> <br />
	<button type="button" id="btnConfirm">결과확인</button>
	
</body>
</html>
<script>
$(()=>{
	$("#btnConfirm").click ( ()=>{
		$.ajax({
			"url":"receive2.jsp",
			"data":{"name":$("#name").val(), 
					"kor":$("#kor").val(), 
					"eng":$("#eng").val(), 
					"mat":$("#mat").val()}, 
			"dataType":"json"  
		})
		.done((data)=>{
			$("#result").html(data["name"] + "님의 총점은" + data["total"] + "님의 평균은" + data["avg"] + "입니다.");
		})
		.fail((j,error)=>{
			console.log(error);
		})
	})
})
</script>