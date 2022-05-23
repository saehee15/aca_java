<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="ageCheck" action="ageCheck.do"" method="post">
	
		이름: <input type="text" name="name"> <br/>
		나이: <input type="text" name="age"> <br/>
	
	<button>나이체크</button>
	</form>
</body>
</html>
<script>
	// servelt파일 ageCheckServlet.java랑 연결됨
	$("#ageCheck").submit(function (event) {
		event.preventDefault();
		
		$("#ageCheck")[0].submit();
	})
	

</script>