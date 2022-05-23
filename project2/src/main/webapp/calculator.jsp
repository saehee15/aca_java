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
<!-- action에는 서블릿, jsp 다 올수있고, 파일명.jsp 이렇게 확장자가 없으면 서블릿 호출 -->
<form id="myform" action="calculator" method="get">
	x: <input type="text" name="x"> <br/>
	y: <input type="text" name="y"> <br/>
	
<select name="operator">
	<option value="">--선택 </option>
	<option value="1">+</option>
	<option value="2">-</option>
	<option value="3">*</option>
	<option value="4">/</option>
</select>
<button>전송</button>

</form>
</body>
</html>
<script>

	$("#myform").submit(function(event) {
		event.preventDefault(); // 본래의 기능을 막는다.
		
		$("#myform")[0].submit(); // 배열이라 [0]을 꼭 써줘야함
	})

</script>