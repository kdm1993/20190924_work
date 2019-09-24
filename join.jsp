<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("EUC-KR");
	String[] hobby = request.getParameterValues("hobby");
	
	out.println("<h2>작성하신 내용은 아래와 같습니다</h2><br>");
	out.println("이름 : " + request.getParameter("name") + "<br><hr/>");
	out.println("성별 : " + request.getParameter("gender") + "<br><hr/>");
	out.println("아이디 : " + request.getParameter("id") + "<br><hr/>");
	out.println("주소 : " + request.getParameter("home") + "<br><hr/>");
	out.println("전화번호 : " + request.getParameter("phonenum") + "<br><hr/>");
	out.println("이메일주소 : " + request.getParameter("email") + "<br><hr/>");
	out.println("취미<br><br>");
	if(hobby == null) {
		out.println("선택한 취미가 없습니다");
	} else {
		out.println("<table border=\"1\">");
		for(int x=0; x<hobby.length; x++) {
			out.println("<tr>");
			out.println("<td width=\"80\" align=\"center\">");
			out.println(hobby[x]);
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	}
	%>
</body>
</html>