<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name");
String kor = request.getParameter("kor");
String eng = request.getParameter("eng");
String mat = request.getParameter("mat");
int total = Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(mat);
float avg = total/3.0f;  
%>
{"name":"<%=name%>", "total":"<%=total%>","avg":"<%=avg%>"}