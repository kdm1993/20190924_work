<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String log = sf.format(date) + " : ";
		log += "[" + request.getParameter("id") + "] 로그인";
		application.log(log);
	%>
	
	<h2>[<%=request.getParameter("id") %>]님 접속을 환영합니다.</h2>
	<h2>접속하신 날짜 및 시간은 <%=sf.format(date) %></h2>
</body>
</html>