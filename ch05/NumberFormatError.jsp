<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage="true" %>
    <% response.setStatus(200); 
    //https://hyunning.tistory.com/130%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Number Format Exception</h1>
	<h2>숫자형식 잘못됨</h2>
	<h2>상세 에러 메시지 : <%=exception.getMessage() %></h2>
</body>
</html>