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
	
	out.println("<h2>�ۼ��Ͻ� ������ �Ʒ��� �����ϴ�</h2><br>");
	out.println("�̸� : " + request.getParameter("name") + "<br><hr/>");
	out.println("���� : " + request.getParameter("gender") + "<br><hr/>");
	out.println("���̵� : " + request.getParameter("id") + "<br><hr/>");
	out.println("�ּ� : " + request.getParameter("home") + "<br><hr/>");
	out.println("��ȭ��ȣ : " + request.getParameter("phonenum") + "<br><hr/>");
	out.println("�̸����ּ� : " + request.getParameter("email") + "<br><hr/>");
	out.println("���<br><br>");
	if(hobby == null) {
		out.println("������ ��̰� �����ϴ�");
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