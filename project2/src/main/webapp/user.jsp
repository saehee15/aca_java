<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="userInfo" action="user.do" method="post">
	
		이름: <input type="text" name="user"> <br />
		전화번호: <input  type="text" name="phone"> <br />
		이메일: <input  type="text" name="email"> <br />
	
		
		<button>전송</button>
	
	</form>
</body>
</html>
<script>
	$("#userInfo").submit(function(event) {
	event.preventDefault(); // 본래의 기능을 막는다.
	
	$("#userInfo")[0].submit(); // 배열이라 [0]을 꼭 써줘야함
})

</script>