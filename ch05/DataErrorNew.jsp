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
	<h1>잘못된 형식의 데이터 입력함</h1>
	<h2>상세 에러 메시지 : <%=exception.getMessage() %></h2>
</body>
</html>