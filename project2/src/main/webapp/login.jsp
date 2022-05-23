<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="myform" action="login.do" method="post">
		
		아이디: <input type="text" name="user_id" /> <br />
 		비밀번호: <input type="password" name="user_pw" /> <br />
 		
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