<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OneToTen.jsp</title>
</head>
<body>
	<h1>1부터 10까지 순서대로 출력해보세요</h1>
	<% for(int cnt = 1; cnt <= 10; cnt++) { 
		out.println("<h2>" + cnt + "</h2>");
	}
	%>
</body>
</html>