<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TwoHundred.jsp</title>
</head>
<body>
	<%
	int result = 0;
	for(int cnt=1; cnt <= 100; cnt++)
		result += cnt;
	%>
	<h1>1 부터 100까지의 합은? <%=result %></h1>
	<%
	for(int cnt=101; cnt <= 200; cnt++)
		result += cnt;
	%>
	<h1>1 부터 200까지의 합은?<%=result %></h1>
</body>
</html>