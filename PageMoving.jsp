<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>������ �̵� ����� �����մϴ�.</h2>
	<%
		String move = request.getParameter("move");
		if(move == null) {
	%>
		�̵� ����� GET ������� �����մϴ�. �Ķ������ �̸��� "move" �Դϴ�.<br>
		�Ķ������ ���� ���� �Ʒ��� ���� �����մϴ�.<br>
		<hr/>
		�����̷�Ʈ : "redirect"<br>
		������ : "forward"<br>
		��Ŭ��� : "include"<br>
		<hr/>
	<%	
		}
		if(move != null) {
			if(move.equals("redirect")) {
				response.sendRedirect("PageMovingRedirect.jsp");
			} else if(move.equals("forward")) {
				pageContext.forward("PageMovingForward.jsp");
			} else if(move.equals("include")) {
				pageContext.include("PageMovingInclude.jsp");
			}
		}
	%>
	<h2>PageMoving.jsp �������� ������ �Դϴ�.</h2>
</body>
</html>