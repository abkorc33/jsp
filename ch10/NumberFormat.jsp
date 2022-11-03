<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NumberFormat.jsp</title>
</head>
<body>
	<h1>숫자 형식</h1>
	<h2><fmt:formatNumber value="1234567890"/></h2>
	<h2><fmt:formatNumber value="1234567890" groupingUsed="false"/></h2>
	<h2><fmt:formatNumber value="3.14158" pattern="#.###"/></h2> <!-- 반올림해줌 -->
	<h2><fmt:formatNumber value="10.7" pattern="#.00"/></h2> <!-- 소수점 빈 부분을 0으로 채워줌 -->
</body>
</html>