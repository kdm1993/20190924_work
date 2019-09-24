<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>페이지 이동 방식을 지정합니다.</h2>
	<%
		String move = request.getParameter("move");
		if(move == null) {
	%>
		이동 방식을 GET 방식으로 지정합니다. 파라미터의 이름은 "move" 입니다.<br>
		파라미터의 값은 각각 아래와 같이 지정합니다.<br>
		<hr/>
		리다이렉트 : "redirect"<br>
		포워드 : "forward"<br>
		인클루드 : "include"<br>
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
	<h2>PageMoving.jsp 페이지의 마지막 입니다.</h2>
</body>
</html>