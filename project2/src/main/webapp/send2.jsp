<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	
	<%-- 이부분에서 <form method="post" action="/project2/calc.do"> 에서 서블릿 호출할수도 있음 --%>
	<form method="post" action="/project2/receive2.jsp">  
	
		x: <input type="text" name="x" /> <br/>
		y: <input type="text" name="y" /> <br/>
		
		<input type="submit" value="보내기" />
	</form>
	
</body>
</html>