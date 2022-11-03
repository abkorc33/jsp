<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String str1=request.getParameter("NUM1");
	String str2=request.getParameter("NUM2");
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Divide.jsp</title>
</head>
<body>
	<h1>나누기</h1>
	<c:catch var="e">
		<% int result = num1 / num2; %>
		<h1>나눗셈 결과 : <%=result %></h1>
	</c:catch>
	<c:if test="${e != null }"><!-- e != null : exception이 발생했는지 체크하는 조건식 -->
		<h1>에러 메세지 : ${e.message }</h1>
	</c:if>
</body>
</html>