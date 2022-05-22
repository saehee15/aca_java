<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>서버로 정보 전송하기</h1>
	<p> 서버로 정보를 전송하려면 반드시 form 태그가 필요합니다. <br/>
		form태그안에 input, select, textarea등의 태그를 두고
		각 태그에 name속성에는 식별값을, value에는 전달할 값을 주어야 서버로 전달합니다.<br/>
		form 태그에는 method, action 두개의 속성이 있는데
		method에는 전송방법을 지정할 수 있습니다.(get, post)
		지정을 하지 않으면 get방식이 적용됩니다. <br/>
		action은 서버에서 이 응답을 처리할 페이지 url을 기술합니다.<br/>
		name속성에 폼이름을 넣어 접근할 수 있습니다.
		form 태그에 submit 함수를 호출하여 서버로 정보 전달이 가능합니다.
	</p>
	
	<%-- 보안되어야 하는 정보는 post로 --%>
	<%-- get방식은 url 복사해서, 다른 창에서 붙여나도 똑같이 들어갈수 있음, post는 보안걸려서 안됨 --%>
	<form method="post" action="/project2/receive1.jsp">  
	
		아이디: <input type="text" name="userid" /> <br/>
		패스워드: <input type="password" name="password" /> <br/>
		
		<input type="submit" value="보내기" /> 
		
	</form>
</body>
</html>