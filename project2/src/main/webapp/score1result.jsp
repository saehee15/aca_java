<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: <%=request.getAttribute("name") %> <br/>
	국어: <%=request.getAttribute("kor") %> <br/>
	영어: <%=request.getAttribute("eng") %> <br/>
	수학: <%=request.getAttribute("mat") %> <br/>
	결과: <%=request.getAttribute("result") %> <br/>
	
</body>
</html>