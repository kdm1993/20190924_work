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
		log += "[" + request.getParameter("id") + "] �α���";
		application.log(log);
	%>
	
	<h2>[<%=request.getParameter("id") %>]�� ������ ȯ���մϴ�.</h2>
	<h2>�����Ͻ� ��¥ �� �ð��� <%=sf.format(date) %></h2>
</body>
</html>