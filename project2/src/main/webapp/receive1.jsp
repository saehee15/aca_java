<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 String userid = request.getParameter("userid");
 String password = request.getParameter("password");
 %>
 
 <%=userid%> &nbsp; <%=password%>
</body>
</html>