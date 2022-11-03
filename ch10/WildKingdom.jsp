<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WildKingdom.jsp</title>
</head>
<body>
	<h1>호랑이 생일잔치 참석자</h1>
	<c:set var="guests" value="토끼^^거북이~강아지$$$여우*사슴"/>
	<c:forTokens var="animal" items="${guests }" delims="^~$*">
		<!-- delims안의 특수문자를 무시(제거)하며 다음줄로 변경 -->
		<h2>${animal }</h2>
	</c:forTokens>
</body>
</html>