<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int num1=0, num2=0, result=0;
    try {
    	String str1 = request.getParameter("NUM1");
    	String str2 = request.getParameter("NUM2");
    	num1 = Integer.parseInt(str1);
    	num2 = Integer.parseInt(str2);
    	result = num1 + num2;
    } catch (NumberFormatException e) {
    	RequestDispatcher dispatcher = request.getRequestDispatcher("DataError.jsp");
    	dispatcher.forward(request, response);
    } //주소창 뒤에 ?NUM1=2&NUM2=3 붙여야 결과값 나옴
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>더하기 결과</h1>
	<h2><%= num1 %> + <%= num2 %> = <%= result %></h2>
</body>
</html>