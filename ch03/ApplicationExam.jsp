<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ApplicationExam.jsp</title>
</head>
<body>
	<% String appPath = application.getContextPath(); 
		String filePath = application.getRealPath("/ch02/PinfoInput.jsp");
	%>
	<h1>웹 어플리케이션의 url 경로 : <%=appPath %></h1>
	<h1>/ch02/PinfoInput.jsp의 파일 경로 : <%=filePath %></h1>
</body>
</html>