<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Echo.jsp</title>
</head>
<body>
	<h1>forEach</h1>
	<c:forEach var="cnt" begin="0" end="10" step="2">
		<!-- begin에서 end까지 반복 -->
		<!-- step의 숫자만큼 begin값에서 추가 -->
		<!-- step이 없다면 1씩 증가 -->
		<font size="${cnt }">야호</font><br>
	</c:forEach>
</body>
</html>