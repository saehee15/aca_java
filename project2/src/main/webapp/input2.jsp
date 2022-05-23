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
<form id="myform" method="post" enctype="UTF-8">
	아이디: <input type="text" name="userid"> <br/>
	패스워드: <input type="password" name="passwd"> <br/>
	이름: <input type="text" name="username"> <br/>
	이메일: <input type="text" name="email"> <br/>
	전화번호: <input type="text" name="phone"> <br/>
	자기소개: <textarea name="intro" rows="3" cols="40"></textarea> <br/>
	
	흥미있는과목: <br/>
	<input type="checkbox" name="interest" value="html">html <br/>
	<input type="checkbox" name="interest" value="css">css <br/>
	<input type="checkbox" name="interest" value="js">js <br/>
	<input type="checkbox" name="interest" value="java">java<br/>
	<input type="checkbox" name="interest" value="python">python<br/>

	<button>보내기</button>
</form>
</body>
</html>
<script>
$("#myform").submit(function(e) {
	e.preventDefault();
	$("#myform").prop("action","/project2/params.do");
	$("#myform").prop("method","post");
	$("#myform")[0].submit();
})
</script>