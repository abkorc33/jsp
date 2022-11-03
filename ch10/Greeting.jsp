<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Greeting.jsp</title>
</head>
<body>
	<h1>인사하기</h1>
	<c:choose>
		<c:when test="${param.NUM == 0 }">
			<h1>처음 뵙겠습니다.</h1>
		</c:when>
		<c:when test="${param.NUM == 1 }">
			<h1>또 만났네요.</h1>
		</c:when>
		<c:otherwise> <!-- default의 역할 -->
			<h1>자주 만나네요.</h1>
		</c:otherwise>
	</c:choose>
</body>
</html>