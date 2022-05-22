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
 // 내가
 int x = Integer.parseInt(request.getParameter("x"));
 int y = Integer.parseInt(request.getParameter("y"));
 
 %>
<%=x%>+<%=y%> = <%=x + y%>
  
  
  
  
   
  <%
  // 선생님
  String x1 = request.getParameter("x");
  String y1 = request.getParameter("y");
  int result = Integer.parseInt(x1) + Integer.parseInt(y1);
  %>
  <h1><%=x1%>+<%=y1%> = <%=result%></h1>
  
  
  

</body>
</html>